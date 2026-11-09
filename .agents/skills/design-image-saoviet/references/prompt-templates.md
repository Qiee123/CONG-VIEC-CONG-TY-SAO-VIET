# 19 Prompt Templates — Tạo ảnh quảng cáo Facebook

Mỗi lần tạo nội dung cho 4 page, chọn 4 prompt khác nhau từ 19 mẫu dưới đây (mỗi page bám chuyên môn riêng của page đó).

## LOGO (bắt buộc xử lý trong MỌI prompt)

**Quy tắc mới:** ảnh cuối phải có logo thật chèn bằng `scripts/apply-logo.ps1`. Prompt KHÔNG được yêu cầu AI vẽ/tái tạo/bắt chước logo. Khi dùng bất kỳ template nào bên dưới, nếu có dòng "dòng mô tả logo cũ" hoặc mô tả logo, hãy THAY dòng đó bằng đoạn sau:

```
Logo handling: Do not draw, imitate, generate, or recreate any logo. Keep the selected logo-safe corner or header area as natural quiet negative space in the same background style, suitable for adding the real Sao Viet logo later in post-production. Do NOT draw a placeholder box, border, dashed outline, label, frame, or marked logo area.
```

Ảnh tham chiếu chất lượng: bộ `Đào tạo AI Sao Việt/19-05-2026` có logo nằm trực tiếp trên nền/header tự nhiên, không có khung chừa logo. Với hệ thống Sao Việt cũng áp dụng cùng tinh thần này: logo thật được chèn sau, nhưng bố cục phải trông như logo đã được thiết kế sẵn trong ảnh cuối.

## Chữ tiếng Việt (bắt buộc xử lý trong MỌI prompt)

Mỗi prompt hoàn chỉnh lấy từ bất kỳ template nào bên dưới PHẢI:

- Liệt kê nguyên văn, đầy đủ dấu từng dòng chữ được phép xuất hiện trên ảnh; không để model tự viết thêm, diễn giải hoặc rút gọn nội dung.
- Chèn nguyên văn câu sau: `All Vietnamese text must be rendered with full, correct Vietnamese diacritics (dấu thanh + dấu mũ/móc). Do NOT omit, simplify, romanize, or alter any diacritical marks.`
- Yêu cầu không sinh chữ giả, chữ vô nghĩa, ký tự méo hoặc nội dung ngoài danh sách đã duyệt.
- Sau khi render, đối chiếu trực quan từng dòng trên đủ 4 ảnh với bản chữ chuẩn theo `Step 7 — Final QA Gate` trong `SKILL.md`; có lỗi thì render lại ảnh đó.

## Tính xác thực (bắt buộc)

- Không tự sinh giá, lịch khai giảng, ưu đãi, số liệu kết quả, cam kết, tên người, ảnh học viên thật hoặc lời chứng thực.
- Với Prompt 13/18, chỉ dùng feedback, tên và ảnh khi user/project cung cấp dữ liệu đã xác nhận. Nếu không có, chuyển các thẻ feedback thành FAQ, tình huống học tập hoặc showcase sản phẩm, không gắn tên người và không trình bày như lời chứng thực có thật.
- Không dùng mốc tuần, thời lượng, chứng chỉ, thẻ thống kê hoặc quyền lợi tuyển dụng có số liệu khi nguồn đầu vào chưa xác nhận; thay bằng nhãn lợi ích định tính.

## Điều kiện chọn template

- Prompt 8 chỉ dùng cho tuyển dụng khi user yêu cầu tuyển dụng. Với chiến dịch khóa học thông thường, chuyển nó thành poster tuyển sinh dọc và thay toàn bộ nội dung tuyển dụng bằng chữ khóa học đã duyệt.
- Prompt 13/18 chỉ giữ dạng feedback khi có dữ liệu feedback xác thực; nếu không, áp dụng phương án FAQ/showcase ở trên.

Vị trí gợi ý theo prompt:
- Prompt 1 (2x2 Grid): best clean corner of banner
- Prompt 2 (AI Banner): best clean corner
- Prompt 3 (Roadmap): best clean corner
- Prompt 4 (Isometric): best clean corner
- Prompt 5 (Before/After): best clean header position
- Prompt 6 (Creative): best clean corner
- Prompt 7 (High-Conversion): best clean corner
- Prompt 8 (TikTok/Reels Recruitment): best clean corner
- Prompt 9 (Neon Tech): best clean corner
- Prompt 10 (Magazine Editorial): best clean corner
- Prompt 11 (Glassmorphism UI): best clean corner
- Prompt 12 (Bold Typography): best clean corner
- Prompt 13 (Student Feedback): best clean corner
- Prompt 14 (Pastel Kids): best clean corner
- Prompt 15 (Dark Premium): best clean corner
- Prompt 16 (Flat Illustration): best clean corner
- Prompt 17 (Gradient Mesh): best clean corner
- Prompt 18 (Photo Collage Feedback): best clean corner
- Prompt 19 (Corporate Professional): best clean corner

---

## Prompt 1: 2x2 Canva-style Grid (2160x2160)

```
**Create a modern 2x2 Canva-style educational advertising banner for:

COURSE NAME: [REPLACE_COURSE_NAME]

BRAND / LOCATION: [REPLACE_BRAND]

Style:

bright, clean, modern Facebook education ads, realistic Canva poster design, highly readable, professional educational marketing style.

Color palette:

blue, cyan, orange, white, soft purple gradients.

Layout:

connected 2x2 grid (2160x2160), each panel must have different composition and visual style but still connected as one campaign.

Automatically adapt visuals only; all visible text must come from the approved verbatim text list:

- visuals
- software/UI
- icons
- workflows
- educational scenes

based on the course name.

Panel 1:

main course introduction with professional workspace and course-related software/interface.

Panel 2:

common beginner problems and messy workflow related to the course.

Panel 3:

learning transformation and optimized workflow.

Panel 4:

professional result, completed projects and successful workflow.

Use realistic educational visuals similar to:

Canva templates, Facebook ads, infographic posters, Vietnamese training center banners.

Logo handling: Do not draw, imitate, generate, or recreate any logo. Keep the selected logo-safe corner or header area as natural quiet negative space in the same background style, suitable for adding the real Sao Viet logo later in post-production. Do NOT draw a placeholder box, border, dashed outline, label, frame, or marked logo area.

Global footer:

"[REPLACE_BRAND]"

Requirements:

premium typography, balanced composition, modern educational advertising, realistic software visuals, social-media friendly, less AI-generated look.

Avoid:

watermark, QR code, hotline, address, human figures, cyberpunk, holograms, robots, futuristic AI style, messy layouts.

**
```

---

## Prompt 2: AI Education Banner (1290x960)

```
**Design a modern high-conversion AI education banner (1290x960).

COURSE: [REPLACE_COURSE_NAME]
BRAND: [REPLACE_BRAND]

BRAND COLOR PALETTE (strict):

* Background gradient: #F4F7FC (soft white blue) to #DDEBFF (light futuristic blue)
* Primary: #0037A6 (deep royal blue — headlines, containers)
* Secondary glow: #00C2D8 (cyan neon — AI UI accents, hologram effects)
* Accent: #FF8A00 (bright orange — CTA, highlights)
* Text: #0B1F45 (dark navy) and #FFFFFF
* CTA: #FF8A00 with white text

Scene: futuristic AI-powered productivity workspace — sleek laptop displaying AI assistant interface, floating AI workflow cards, holographic UI effects, productivity enhancement atmosphere. Premium corporate technology advertising style.

Supporting visual elements (auto-adapt to course):

* AI assistant interface relevant to the course
* floating AI workflow cards connected with glowing neon lines
* hologram circles and futuristic workflow graphics
* large AI logo or course-related 3D element in foreground
* soft blue glow effects and glassmorphism UI
* productivity dashboard graphics
* modern corporate AI workflow visuals

Layout: clear visual hierarchy — typography-heavy left section and futuristic AI workspace visualization on the right side.

Text (ALL UPPERCASE, Vietnamese):

* Small top label:
  "[LABEL NHỎ]"
* Main headline:
  "[DÒNG TIÊU ĐỀ 1]"
  "[DÒNG TIÊU ĐỀ 2]"
  "[DÒNG TIÊU ĐỀ 3]"
* Supporting headline:
  "[SUBHEADLINE]"
* Highlight slogan box:
  "[SLOGAN DÒNG 1]"
  "[SLOGAN DÒNG 2]"
* Benefit labels:
  "[BENEFIT 1]"
  "[BENEFIT 2]"
  "[BENEFIT 3]"
  "[BENEFIT 4]"
* Floating AI cards:
  "[AI TOOL 1]"
  "[AI TOOL 2]"
  "[AI TOOL 3]"
  "[AI TOOL 4]"
  "[AI TOOL 5]"
  "[AI TOOL 6]"
* Audience box:
  "[TIÊU ĐỀ BOX]"
  ✓ "[ĐỐI TƯỢNG 1]"
  ✓ "[ĐỐI TƯỢNG 2]"
  ✓ "[ĐỐI TƯỢNG 3]"
* CTA button:
  "[CTA]"
* Logo handling:
  Logo handling: Do not draw, imitate, generate, or recreate any logo. Keep the selected logo-safe corner or header area as natural quiet negative space in the same background style, suitable for adding the real Sao Viet logo later in post-production. Do NOT draw a placeholder box, border, dashed outline, label, frame, or marked logo area.
* Footer:
  "[REPLACE_BRAND]"
* Handwritten accent:
  "[TEXT NHẤN MẠNH VIẾT TAY]"

Typography:

* ultra bold sans-serif typography
* giant gradient headline text
* premium corporate advertising layout
* clean spacing and strong readability

Style:

* premium AI education advertising banner
* modern corporate tech aesthetic
* subtle neon glow
* glassmorphism
* 3D glossy effects
* ultra detailed
* clean professional layout
* high-end marketing design

Avoid:

* clutter
* watermark
* QR code
* distorted text
* cartoon style
* overcomplicated sci-fi visuals
* dark unreadable composition

**
```

---

## Prompt 3: Horizontal Infographic Roadmap (1920x1080)

```
**Design a horizontal infographic learning roadmap banner (1920x1080).

COURSE: [REPLACE_COURSE_NAME]

BRAND: [REPLACE_BRAND]

BRAND COLOR PALETTE (strict):

- Background: #FFFFFF
- Primary: #5EB9F0 (bright blue — timeline line, step badges, icons)
- Dark: #343F52 (deep navy — headings, step titles)
- Accent: #FAB758 (golden — milestone markers, star highlights)
- CTA: #0077C8 (deep blue — footer button)
- Light section: #E5F4FD (alternating step backgrounds)
- Subtext: #60697B

Layout — horizontal timeline flowing left-to-right with 5 learning milestones:

Header (best clean header position):

- Logo handling: Do not draw, imitate, generate, or recreate any logo. Keep the selected logo-safe corner or header area as natural quiet negative space in the same background style, suitable for adding the real Sao Viet logo later in post-production. Do NOT draw a placeholder box, border, dashed outline, label, frame, or marked logo area.
- "[REPLACE_BRAND]" in #5EB9F0 small text
- "LỘ TRÌNH HỌC [REPLACE_COURSE_NAME]" in bold #343F52
- Subtitle: "Từ zero đến chuyên nghiệp" in #60697B

Horizontal timeline (5 columns, evenly spaced left-to-right, connected by a horizontal dotted arrow line in #5EB9F0):

Step 1: "BƯỚC 1" — Foundation basics, introductory concepts

Step 2: "BƯỚC 2" — Core skills, hands-on practice

Step 3: "BƯỚC 3" — Advanced techniques, practical exercises

Step 4: "BƯỚC 4" — Professional workflow, applied project

Step 5: "HOÀN THÀNH" — Review and practical application; do not claim certification unless verified

Each step has:

- Numbered circle badge in #5EB9F0 (final step in #FAB758)
- Step title in bold #343F52 below the badge
- 2-line description in #60697B below the title
- Small relevant icon in #5EB9F0 above the badge
- Horizontal connecting dotted arrow line in #5EB9F0 between steps

Footer bar (bottom full-width): #0077C8 strip with white text: "[CTA]" (e.g. "ĐĂNG KÝ NGAY") | "[REPLACE_BRAND]".

Avoid: photos, human figures, watermark, QR code, cluttered design.

**
```

---

## Prompt 4: Isometric 3D Workspace (1200x1200)

```
**Design an isometric 3D workspace education banner (1200x1200).

COURSE: [REPLACE_COURSE_NAME]

BRAND: [REPLACE_BRAND]

BRAND COLOR PALETTE (strict):

- Background: #F0F8FE (ice white)
- Workspace elements: #5EB9F0 (bright blue — monitors, desk accents)
- Dark elements: #343F52 (deep navy — desk, keyboard, chair)
- Accent highlights: #FAB758 (golden — floating icons, certificate, lightbulb)
- Screen UI: #0077C8 (deep blue software interface on monitors)
- Shadows: soft #343F52 at 10% opacity

Style: clean isometric 3D illustration, modern flat-3D hybrid, colorful but on-brand.

Scene: isometric desk workspace with course-relevant items (auto-adapt):

- Laptop/monitor in #343F52 showing course software with #5EB9F0 UI
- Relevant tools colored in #5EB9F0 and #343F52
- Floating 3D icons above in #FAB758: certificate, progress bars, lightbulb, star
- Decorative: plant, coffee cup, pencil holder in muted brand tones

Logo handling: Do not draw, imitate, generate, or recreate any logo. Keep the selected logo-safe corner or header area as natural quiet negative space in the same background style, suitable for adding the real Sao Viet logo later in post-production. Do NOT draw a placeholder box, border, dashed outline, label, frame, or marked logo area.

Text overlay:

- Top: "[REPLACE_COURSE_NAME]" in bold #343F52
- Below: "Học thực hành — Ứng dụng ngay" in #60697B
- CTA badge: floating #0077C8 rounded button "[CTA]" (e.g. "TÌM HIỂU THÊM") with white text, 3D shadow
- Bottom strip: "[REPLACE_BRAND]" on #5EB9F0 bar with white text

Avoid: photos, dark themes, complex scenes, human figures, text-heavy layout.

**
```

---

## Prompt 5: Before/After Comparison (1200x628)

```
**Design a split before/after comparison education banner (1200x628).

COURSE: [REPLACE_COURSE_NAME]

BRAND: [REPLACE_BRAND]

BRAND COLOR PALETTE (strict):

LEFT (Before): desaturated #343F52 tones, muted grays, subtle #B30000 warning accents

RIGHT (After): vibrant #5EB9F0 and #FAB758 success tones, bright #E5F4FD background

Divider: bold diagonal line with #0077C8 to #5EB9F0 gradient

Labels: "TRƯỚC" badge in #B30000, "SAU" badge in #5EB9F0

Layout — 50/50 split:

LEFT SIDE — "TRƯỚC KHI HỌC":

- Messy desk, scattered papers, confused file structure in desaturated tones
- Error screens, basic output, stress indicators
- Faded, low-contrast treatment using muted #343F52

RIGHT SIDE — "SAU KHI HỌC [REPLACE_COURSE_NAME]":

- Clean workspace in bright #E5F4FD tones
- Professional completed project on screen
- #FAB758 achievement stars, #5EB9F0 checkmarks
- Bright, vibrant, professional visual treatment

Center divider: bold arrow in #0077C8 pointing left-to-right.

Logo handling: Do not draw, imitate, generate, or recreate any logo. Keep the selected logo-safe corner or header area as natural quiet negative space in the same background style, suitable for adding the real Sao Viet logo later in post-production. Do NOT draw a placeholder box, border, dashed outline, label, frame, or marked logo area.

best clean header position: "[REPLACE_COURSE_NAME]" in #343F52 spanning both sides.

Bottom strip: #0077C8 bar — left: "[REPLACE_BRAND]" | center: "[CTA]" button in #FAB758 with #343F52 text — all white text except CTA.

Avoid: human faces, watermark, QR code, too much text.

**
```

---

## Prompt 6: Creative Before vs After (1920x960)

```
**Create a modern Canva-style educational advertising banner for:

COURSE NAME:

[REPLACE_COURSE_NAME]

BRAND / LOCATION:

[REPLACE_BRAND]

Style:

modern creative social media advertising, realistic Canva poster design, premium typography, clean educational marketing layout.

Color palette:

vibrant gradient purple to pink with cyan and orange accents, bright, trendy and professional.

Scene:

automatically generate a realistic before vs after learning/workflow comparison related to [REPLACE_COURSE_NAME].

Add supporting visual elements related to the course:

- software interfaces
- tools and panels
- workflow comparison
- project mockups
- editing/workspace systems
- educational creative elements

Layout:

clear typography hierarchy, balanced composition, modern Facebook advertising style, realistic Canva-style design.

Logo handling: Do not draw, imitate, generate, or recreate any logo. Keep the selected logo-safe corner or header area as natural quiet negative space in the same background style, suitable for adding the real Sao Viet logo later in post-production. Do NOT draw a placeholder box, border, dashed outline, label, frame, or marked logo area.

Insert ONLY these approved uppercase Vietnamese lines, replaced before rendering and copied verbatim:

"[MAIN HOOK — EXACT APPROVED TEXT]"

"[MAIN PROBLEM / COURSE VALUE — EXACT APPROVED TEXT]"

"[SHORT SUPPORTING TEXT — EXACT APPROVED TEXT]"

Footer:

"[REPLACE_BRAND]"

Requirements:

realistic creative advertising, clean layout, highly readable typography, modern educational poster style, less AI-generated appearance.

Resolution:

1920x960

Avoid:

clutter, too many icons, messy layout, watermark, QR code, hotline, address, cyberpunk, futuristic AI effects, human figures

**
```

---

## Prompt 7: High-Conversion Banner (1920x960)

```
**Create a modern high-conversion educational advertising banner for:

COURSE NAME:

[REPLACE_COURSE_NAME]

BRAND / LOCATION:

[REPLACE_BRAND]

Style:

modern educational social media advertising, realistic Canva-style banner, clean layout, premium typography, professional training center marketing design.

Color palette:

vibrant gradient blue with cyan and orange accents, bright, clean and professional.

Scene:

automatically generate a realistic workspace and learning environment related to [REPLACE_COURSE_NAME].

Add supporting visual elements automatically adapted to the course:

- software interfaces
- productivity dashboards
- workflow systems
- charts, documents or project layouts
- before vs after productivity/workflow comparison
- educational workspace elements

Layout:

clear hierarchy with headline, subheadline and supporting content, modern Facebook advertising composition.

Logo handling: Do not draw, imitate, generate, or recreate any logo. Keep the selected logo-safe corner or header area as natural quiet negative space in the same background style, suitable for adding the real Sao Viet logo later in post-production. Do NOT draw a placeholder box, border, dashed outline, label, frame, or marked logo area.

Insert ONLY these approved uppercase Vietnamese lines, replaced before rendering and copied verbatim:

"[MAIN COURSE TITLE — EXACT APPROVED TEXT]"

"[MAIN BENEFIT LINE — EXACT APPROVED TEXT]"

"[COURSE KEYWORDS — EXACT APPROVED TEXT]"

Footer:

"[REPLACE_BRAND]"

Requirements:

realistic educational advertising banner, strong contrast, premium typography, highly readable layout, realistic Canva-style appearance, less AI-generated look.

Resolution:

1920x960

Avoid:

clutter, watermark, QR code, hotline, address, futuristic AI style, cyberpunk effects, messy layout

**
```

---

## Prompt 8: TikTok/Reels Recruitment Poster (1080x1920)

```
**Design a vertical recruitment poster (1080x1920, 9:16 ratio).

POSITION: Giáo viên [REPLACE_COURSE_NAME]

BRAND: [REPLACE_BRAND]

BRAND COLOR PALETTE (strict):

- Primary: #5EB9F0 (bright blue)
- Dark: #343F52 (deep navy)
- Accent: #FAB758 (golden yellow — star, highlights)
- Background: #F0F8FE (ice white)
- CTA: #0077C8 (deep blue button)
- White: #FFFFFF

Style: modern startup recruitment poster, Canva premium template feel, bold and attention-grabbing, optimized for mobile viewing.

Layout: all content within center safe zone (70%), no text near edges. Large #FFFFFF card with subtle #5EB9F0 border in center, generous white space, bold #343F52 typography for phone screens.

Main headline: "TUYỂN DỤNG GIÁO VIÊN [REPLACE_COURSE_NAME]" in #343F52.

Subtitle: "Gia nhập hệ thống [REPLACE_BRAND]" in #5EB9F0.

Add 3 benefit badges (pill shapes with #FAB758 icon + #343F52 text), using only verified benefits supplied by the user/project: "[VERIFIED BENEFIT 1]", "[VERIFIED BENEFIT 2]", "[VERIFIED BENEFIT 3]". If benefits are not supplied, omit these badges.

Include relevant visual icons in #5EB9F0 matching the course subject.

CTA button: rounded #0077C8 button with white text "[CTA]" (e.g. "ỨNG TUYỂN NGAY").

Logo handling: Do not draw, imitate, generate, or recreate any logo. Keep the selected logo-safe corner or header area as natural quiet negative space in the same background style, suitable for adding the real Sao Viet logo later in post-production. Do NOT draw a placeholder box, border, dashed outline, label, frame, or marked logo area.

Footer: "[REPLACE_BRAND]" centered in #343F52 on #E5F4FD strip.

Avoid: watermark, QR code, cluttered design, generic stock photo look.

**
```

---

## Prompt 9: Neon Tech Banner (1920x960)

```
**Design a modern high-conversion tech education banner (1920x960).

COURSE: [REPLACE_COURSE_NAME]

BRAND: [REPLACE_BRAND]

BRAND COLOR PALETTE (strict):

- Background gradient: #041C3F (dark navy) to #343F52 (deep navy)
- Primary glow: #5EB9F0 (bright blue — neon accents, UI elements)
- Secondary glow: #0077C8 (deep blue — supporting elements)
- Accent: #FAB758 (golden — highlights, key stats, badges)
- Text: #FFFFFF (white headlines) and #E5F4FD (light blue subtext)
- CTA: #5EB9F0 with white text

Scene: professional workspace transformation with course-related software, smart workflows, dark professional atmosphere.

Supporting visual elements: software interface with #5EB9F0 UI accents, automated workflows, charts with #FAB758 highlights, floating UI elements with subtle glow.

Text:

- Headline "[REPLACE_COURSE_NAME]" in bold #FFFFFF
- Subheadline "HỌC THỰC HÀNH — ỨNG DỤNG NGAY" in #5EB9F0
- CTA button: #5EB9F0 with white text "[CTA]"
- Footer: "[REPLACE_BRAND]" in #FAB758

Logo handling: Do not draw, imitate, generate, or recreate any logo. Keep the selected logo-safe corner or header area as natural quiet negative space in the same background style, suitable for adding the real Sao Viet logo later in post-production. Do NOT draw a placeholder box, border, dashed outline, label, frame, or marked logo area.

Avoid: clutter, watermark, QR code, overly futuristic/sci-fi look.

**
```

---

## Prompt 10: Magazine Editorial (A3 portrait feel)

```
**Design a premium magazine-style editorial education poster.

COURSE: [REPLACE_COURSE_NAME]

BRAND: [REPLACE_BRAND]

BRAND COLOR PALETTE (strict):

- Background: #F0F8FE
- Headline: #343F52
- Accent rule lines: #5EB9F0
- Pull quote: #0077C8
- Category label: #FAB758
- Body text: #60697B
- Info boxes: #E5F4FD background with #343F52 text

Style: high-end editorial magazine layout, sophisticated typography, generous whitespace.

Layout:

- Top section: #FAB758 category label + large serif headline in #343F52
- Center: editorial body text in #60697B + pull quote in #0077C8 + flat-lay photography
- Bottom: 3 course-highlight boxes on #E5F4FD background with #343F52 text + brand footer; no phone, address, email, or contact details

Logo handling: Do not draw, imitate, generate, or recreate any logo. Keep the selected logo-safe corner or header area as natural quiet negative space in the same background style, suitable for adding the real Sao Viet logo later in post-production. Do NOT draw a placeholder box, border, dashed outline, label, frame, or marked logo area.

Footer: "[REPLACE_BRAND]"

Avoid: neon colors, harsh gradients, cartoon icons, cluttered design.

**
```

---

## Prompt 11: Glassmorphism UI (1080x1920)

```
**Design a glassmorphism-style education banner (1080x1920, 9:16).

COURSE: [REPLACE_COURSE_NAME]

BRAND: [REPLACE_BRAND]

BRAND COLOR PALETTE (strict):

- Background gradient: #041C3F to #343F52
- Gradient blobs: #5EB9F0, #0077C8, #FAB758
- Glass cards: rgba(255,255,255,0.15) with #5EB9F0 border glow
- Text: #FFFFFF, #E5F4FD
- Feature pills: frosted glass with #5EB9F0 text
- Stat numbers: #FAB758

Style: modern glassmorphism UI, frosted glass cards, soft depth layers.

Layout:

- Background: gradient with soft blobs in #5EB9F0, #0077C8, #FAB758
- Center: floating glass card with course name "[REPLACE_COURSE_NAME]" in #FFFFFF + 3 feature pills in frosted glass with #5EB9F0 text
- Above: mini UI elements with glassmorphism effect
- Below: brand information
- Bottom: 3 glass benefit cards with verified qualitative labels; no invented statistics or numbers

Logo handling: Do not draw, imitate, generate, or recreate any logo. Keep the selected logo-safe corner or header area as natural quiet negative space in the same background style, suitable for adding the real Sao Viet logo later in post-production. Do NOT draw a placeholder box, border, dashed outline, label, frame, or marked logo area.

Footer: "[REPLACE_BRAND]"

Avoid: flat design, photos, retro style, clutter.

**
```

---

## Prompt 12: Bold Typography (1080x1080)

```
**Design a bold typography-driven education poster (1080x1080).

COURSE: [REPLACE_COURSE_NAME]

BRAND: [REPLACE_BRAND]

BRAND COLOR PALETTE (strict):

- Background: solid #5EB9F0
- Text: #FFFFFF
- Accent shape: #FAB758
- Small text: #E5F4FD

Style: Swiss/International typographic poster, text-dominant, extreme bold, maximum readability.

Layout:

- Course name "[REPLACE_COURSE_NAME]" fills 50% of poster in ULTRA BOLD condensed white (#FFFFFF) sans-serif
- Thin rule line separator
- CTA text in #FAB758
- Brand "[REPLACE_BRAND]" in thin white small caps
- One #FAB758 geometric accent shape

Logo handling: Do not draw, imitate, generate, or recreate any logo. Keep the selected logo-safe corner or header area as natural quiet negative space in the same background style, suitable for adding the real Sao Viet logo later in post-production. Do NOT draw a placeholder box, border, dashed outline, label, frame, or marked logo area.

Avoid: images, icons, illustrations, multiple colors, decorative fonts.

**
```

---

## Prompt 13: Student Feedback Banner (1290x960)

```
**Design a modern educational student feedback banner.

Canvas size: 1290x960.

COURSE: [REPLACE_COURSE_NAME]

BRAND: [REPLACE_BRAND]

BRAND COLOR PALETTE (strict):

- Background: #F0F8FE
- Primary blue: #5EB9F0
- Deep interface blue: #0077C8
- Dark navy: #343F52
- Secondary text: #60697B
- Accent gold: #FAB758

Style: Modern Facebook education advertising, Messenger/Facebook feedback UI inspired.

Layout:

- Top: badge "FEEDBACK HỌC VIÊN" in #5EB9F0
- Main title: "[REPLACE_COURSE_NAME]" in bold #343F52
- Center: 3 Messenger-style feedback chat cards (rounded white cards, avatar circles in #5EB9F0, reaction icons in #FAB758)
- Right: advantage panel with 5 checklist items (checkmarks in #5EB9F0, text in #343F52)
- Bottom: CTA strip in #0077C8 with white text "[CTA]"
- Footer: "[REPLACE_BRAND]" in #343F52

Logo handling: Do not draw, imitate, generate, or recreate any logo. Keep the selected logo-safe corner or header area as natural quiet negative space in the same background style, suitable for adding the real Sao Viet logo later in post-production. Do NOT draw a placeholder box, border, dashed outline, label, frame, or marked logo area.

Avoid: purple theme, dark backgrounds, human figures, messy layout.

**
```

---

## Prompt 14: Pastel Friendly — Kids (1080x1080)

```
**Design a friendly pastel education poster for kids (1080x1080).

COURSE: [REPLACE_COURSE_NAME]

BRAND: [REPLACE_BRAND]

BRAND COLOR PALETTE (pastel):

- Background: #F0F8FE
- Primary: #5EB9F0 at 50% opacity → soft sky blue
- Accent: #FAB758 at 60% opacity → soft sunny yellow
- Supporting pastels: soft mint #B8E6D0, lavender #C7C4E8, peachy pink #F5C4B8
- Text: #343F52

Style: soft pastel children's education, playful but not childish, modern Scandinavian illustration.

Layout:

- Top: natural selected logo-safe corner/header negative space + "[REPLACE_BRAND]" in #343F52
- Center: illustration with course-related elements in pastel tones
- Title: "[REPLACE_COURSE_NAME]" in bold #343F52
- Subtitle: "Dành cho bé từ 6-15 tuổi" in #60697B
- 3 benefit bubbles in soft pastel colors with #343F52 text
- CTA pill in #5EB9F0; no phone, address, email, or contact details
- Footer: "[REPLACE_BRAND]"

Logo handling: Do not draw, imitate, generate, or recreate any logo. Keep the selected logo-safe corner or header area as natural quiet negative space in the same background style, suitable for adding the real Sao Viet logo later in post-production. Do NOT draw a placeholder box, border, dashed outline, label, frame, or marked logo area.

Avoid: dark colors, sharp design, realistic humans, neon.

**
```

---

## Prompt 15: Dark Premium (1200x628)

```
**Design a premium dark-theme education banner (1200x628).

COURSE: [REPLACE_COURSE_NAME]

BRAND: [REPLACE_BRAND]

BRAND COLOR PALETTE (dark):

- Background: #041C3F with gradient to #343F52
- Gold accent: #FAB758
- Silver text: #E5F4FD
- Blue accent: #5EB9F0 at 30% opacity
- Body text: #9499A3
- CTA: #FAB758 background with #041C3F text

Style: luxury dark premium, exclusive feel, sophisticated.

Layout:

- Left 60%: category label in #FAB758 + headline "[REPLACE_COURSE_NAME]" in #FFFFFF + thin #FAB758 rule line + subtitle in #E5F4FD + 3 features in #9499A3
- Right 40%: floating 3D render related to the course with soft #5EB9F0 glow
- Bottom: CTA button (#FAB758 background, #041C3F text) + footer "[REPLACE_BRAND]" in #E5F4FD

Logo handling: Do not draw, imitate, generate, or recreate any logo. Keep the selected logo-safe corner or header area as natural quiet negative space in the same background style, suitable for adding the real Sao Viet logo later in post-production. Do NOT draw a placeholder box, border, dashed outline, label, frame, or marked logo area.

Avoid: bright colors, playful elements, cheap gradients, cartoon icons.

**
```

---

## Prompt 16: Flat Illustration (1080x1080)

```
**Design a flat illustration education poster (1080x1080).

COURSE: [REPLACE_COURSE_NAME]

BRAND: [REPLACE_BRAND]

BRAND COLOR PALETTE (strict):

- Background: #F0F8FE
- Primary shapes: #5EB9F0
- Dark shapes: #343F52
- Accent: #FAB758
- Supporting: #177B82 (teal)
- Light fills: #E5F4FD

Style: modern flat vector, Slack/Notion/Figma brand style, geometric, clean.

Layout:

- Center scene: abstract geometric figures + floating elements related to the course, using #5EB9F0, #343F52, #FAB758, #177B82
- Text area below: course name "[REPLACE_COURSE_NAME]" in bold #343F52 + subtitle in #60697B + "[REPLACE_BRAND]"

Logo handling: Do not draw, imitate, generate, or recreate any logo. Keep the selected logo-safe corner or header area as natural quiet negative space in the same background style, suitable for adding the real Sao Viet logo later in post-production. Do NOT draw a placeholder box, border, dashed outline, label, frame, or marked logo area.

Avoid: realistic photos, 3D renders, gradients, detailed faces.

**
```

---

## Prompt 17: Gradient Mesh (1920x1080)

```
**Design a modern gradient mesh education banner (1920x1080).

COURSE: [REPLACE_COURSE_NAME]

BRAND: [REPLACE_BRAND]

BRAND COLOR PALETTE:

- Gradient flow: #5EB9F0 → #0077C8 → #343F52
- Warm accent blob: #FAB758 low opacity
- Text: #FFFFFF
- Glass pills: rgba(255,255,255,0.2)

Style: contemporary gradient mesh, Apple/Stripe website aesthetic.

Layout:

- Background: large fluid gradient mesh flowing from #5EB9F0 through #0077C8 to #343F52 with subtle #FAB758 warm accent blob
- Centered content:
  - Headline "[REPLACE_COURSE_NAME]" in bold #FFFFFF
  - Description text in #FFFFFF at 80% opacity
  - 4 frosted glass tags (rgba(255,255,255,0.2)) with course keywords
  - CTA button in #FAB758 with #343F52 text
  - "[REPLACE_BRAND]" in #FFFFFF

Logo handling: Do not draw, imitate, generate, or recreate any logo. Keep the selected logo-safe corner or header area as natural quiet negative space in the same background style, suitable for adding the real Sao Viet logo later in post-production. Do NOT draw a placeholder box, border, dashed outline, label, frame, or marked logo area.

Avoid: flat colors, sharp edges, photos, dark themes.

**
```

---

## Prompt 18: Photo Collage Feedback (1290x960)

```
**Design a modern educational student feedback banner with photo collage grid layout (1290x960).

COURSE: [REPLACE_COURSE_NAME]

BRAND: [REPLACE_BRAND]

BRAND COLOR PALETTE (strict):

- Background: #F0F8FE
- Primary blue: #5EB9F0
- Deep interface blue: #0077C8
- Dark navy: #343F52
- Secondary text: #60697B
- Accent gold: #FAB758

Style: Modern Facebook education advertising, photo collage grid variant of student feedback layout.

Layout:

- Top: badge "FEEDBACK HỌC VIÊN" in #5EB9F0
- Main title: "[REPLACE_COURSE_NAME]" in bold #343F52
- Center: collage of verified course/project images supplied by the user, in rounded #5EB9F0 frames. Use verified quote/name overlays only when supplied; otherwise use FAQ or project-result labels without person names or testimonial claims
- Right: advantage panel with 5 checklist items (checkmarks in #5EB9F0, text in #343F52)
- Bottom: CTA strip in #0077C8 with white text "[CTA]"
- Footer: "[REPLACE_BRAND]" in #343F52

Logo handling: Do not draw, imitate, generate, or recreate any logo. Keep the selected logo-safe corner or header area as natural quiet negative space in the same background style, suitable for adding the real Sao Viet logo later in post-production. Do NOT draw a placeholder box, border, dashed outline, label, frame, or marked logo area.

Avoid: purple theme, dark backgrounds, human figures, messy layout.

**
```

---

## Prompt 19: Corporate Professional (1920x1080)

```
**Design a corporate professional training banner (1920x1080).

COURSE: [REPLACE_COURSE_NAME]

BRAND: [REPLACE_BRAND]

BRAND COLOR PALETTE (corporate):

- Primary: #343F52 (dominant background left)
- Text: #FFFFFF
- Accent line: #FAB758
- Secondary: #5EB9F0
- Light section: #F0F8FE (right section)
- Body text: #60697B
- CTA: #0077C8

Style: corporate professional, B2B enterprise training, McKinsey/Deloitte quality.

Layout:

- Left 55% on #343F52 background:
  - Category label in #FAB758
  - Headline "[REPLACE_COURSE_NAME]" in bold #FFFFFF
  - #FAB758 underline accent
  - Description text in #E5F4FD
  - 4 benefits with #5EB9F0 checkmarks and #FFFFFF text
- Right 45% on #F0F8FE background:
  - Abstract geometric composition using #5EB9F0, #343F52, #FAB758 shapes
- Bottom bar: full-width strip with "[REPLACE_BRAND]" in #FFFFFF on #343F52 left + CTA button in #0077C8 with #FFFFFF text on right

Logo handling: Do not draw, imitate, generate, or recreate any logo. Keep the selected logo-safe corner or header area as natural quiet negative space in the same background style, suitable for adding the real Sao Viet logo later in post-production. Do NOT draw a placeholder box, border, dashed outline, label, frame, or marked logo area.

Avoid: playful elements, bright colors, illustrations, casual fonts.

**
```
