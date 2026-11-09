param(
  [Parameter(Mandatory=$true)][string]$ImageDir,
  [Parameter(Mandatory=$true)][string]$LogoPath,
  [string[]]$ImageNames,
  [ValidateSet('top-left','top-right','bottom-left','bottom-right')][string]$Position = 'top-left',
  [double]$WidthRatio = 0.15,
  [double]$PaddingRatio = 0.025,
  [switch]$CleanPatch,
  [string]$ConfigPath
)

$ErrorActionPreference = 'Stop'
Add-Type -AssemblyName System.Drawing

if (-not (Test-Path -LiteralPath $ImageDir)) { throw "ImageDir not found: $ImageDir" }
if (-not (Test-Path -LiteralPath $LogoPath)) { throw "LogoPath not found: $LogoPath" }
if ($ConfigPath -and -not (Test-Path -LiteralPath $ConfigPath)) { throw "ConfigPath not found: $ConfigPath" }

$logoConfig = @{}
if ($ConfigPath) {
  $rawConfig = Get-Content -LiteralPath $ConfigPath -Raw | ConvertFrom-Json
  foreach ($item in $rawConfig.images) {
    $logoConfig[$item.name] = $item
  }
}

if (-not $ImageNames -or $ImageNames.Count -eq 0) {
  $ImageNames = Get-ChildItem -LiteralPath $ImageDir -Filter '*.png' | Sort-Object Name | ForEach-Object { $_.Name }
}

# Final output mode: write only the completed logo-applied PNG files.
foreach ($name in $ImageNames) {
  $path = Join-Path $ImageDir $name
  if (-not (Test-Path -LiteralPath $path)) { throw "Image not found: $path" }

  $itemConfig = $null
  if ($logoConfig.ContainsKey($name)) {
    $itemConfig = $logoConfig[$name]
  }
  $currentPosition = $Position
  $currentWidthRatio = $WidthRatio
  $currentPaddingRatio = $PaddingRatio
  $customXRatio = $null
  $customYRatio = $null

  if ($itemConfig) {
    if ($itemConfig.position) { $currentPosition = [string]$itemConfig.position }
    if ($null -ne $itemConfig.widthRatio) { $currentWidthRatio = [double]$itemConfig.widthRatio }
    if ($null -ne $itemConfig.paddingRatio) { $currentPaddingRatio = [double]$itemConfig.paddingRatio }
    if ($null -ne $itemConfig.xRatio) { $customXRatio = [double]$itemConfig.xRatio }
    if ($null -ne $itemConfig.yRatio) { $customYRatio = [double]$itemConfig.yRatio }
  }

  if (@('top-left','top-right','bottom-left','bottom-right') -notcontains $currentPosition) {
    throw "Invalid position '$currentPosition' for image '$name'"
  }

  $base = [System.Drawing.Image]::FromFile($path)
  $logo = [System.Drawing.Image]::FromFile($LogoPath)
  $g = $null
  $canvas = $null
  try {
    $canvas = New-Object System.Drawing.Bitmap($base.Width, $base.Height, [System.Drawing.Imaging.PixelFormat]::Format32bppArgb)
    $g = [System.Drawing.Graphics]::FromImage($canvas)
    $g.CompositingQuality = [System.Drawing.Drawing2D.CompositingQuality]::HighQuality
    $g.SmoothingMode = [System.Drawing.Drawing2D.SmoothingMode]::HighQuality
    $g.InterpolationMode = [System.Drawing.Drawing2D.InterpolationMode]::NearestNeighbor
    $g.PixelOffsetMode = [System.Drawing.Drawing2D.PixelOffsetMode]::Half
    $g.DrawImage($base, 0, 0, $base.Width, $base.Height)

    # Use the original logo pixels by default. Only resize when WidthRatio > 0.
    if ($currentWidthRatio -gt 0) {
      $targetWidth = [Math]::Round($base.Width * $currentWidthRatio)
      if ($targetWidth -gt $logo.Width) { $targetWidth = $logo.Width }
    } else {
      $targetWidth = $logo.Width
    }
    $targetHeight = [Math]::Round($targetWidth * $logo.Height / $logo.Width)
    $pad = [Math]::Round($base.Width * $currentPaddingRatio)

    if ($null -ne $customXRatio -and $null -ne $customYRatio) {
      $x = [Math]::Round($base.Width * $customXRatio)
      $y = [Math]::Round($base.Height * $customYRatio)
    } else {
      switch ($currentPosition) {
        'top-left' { $x = $pad; $y = $pad }
        'top-right' { $x = $base.Width - $targetWidth - $pad; $y = $pad }
        'bottom-left' { $x = $pad; $y = $base.Height - $targetHeight - $pad }
        'bottom-right' { $x = $base.Width - $targetWidth - $pad; $y = $base.Height - $targetHeight - $pad }
      }
    }

    if ($x -lt 0 -or $y -lt 0 -or ($x + $targetWidth) -gt $base.Width -or ($y + $targetHeight) -gt $base.Height) {
      throw "Logo placement for '$name' is outside image bounds"
    }

    if ($CleanPatch -or ($itemConfig -and $itemConfig.cleanPatch)) {
      $sampleX = if ($currentPosition -like '*left') { [Math]::Min($base.Width - 1, $x + $targetWidth + 5) } else { [Math]::Max(0, $x - 5) }
      $sampleY = [Math]::Min($base.Height - 1, $y + [Math]::Round($targetHeight / 2))
      $bmpBase = New-Object System.Drawing.Bitmap($base)
      $bgSample = $bmpBase.GetPixel($sampleX, $sampleY)
      $bmpBase.Dispose()
      $patchBrush = New-Object System.Drawing.SolidBrush($bgSample)
      $g.FillRectangle($patchBrush, $x, $y, $targetWidth, $targetHeight)
      $patchBrush.Dispose()
    }

    $rect = New-Object System.Drawing.Rectangle($x, $y, $targetWidth, $targetHeight)
    $g.DrawImage($logo, $rect)

    $tmp = "$path.tmp.png"
    $canvas.Save($tmp, [System.Drawing.Imaging.ImageFormat]::Png)
  }
  finally {
    if ($g) { $g.Dispose() }
    if ($canvas) { $canvas.Dispose() }
    $base.Dispose()
    $logo.Dispose()
  }
  Move-Item -LiteralPath $tmp -Destination $path -Force
}

Get-ChildItem -LiteralPath $ImageDir -Filter '*.png' | Sort-Object Name | Select-Object Name,Length


