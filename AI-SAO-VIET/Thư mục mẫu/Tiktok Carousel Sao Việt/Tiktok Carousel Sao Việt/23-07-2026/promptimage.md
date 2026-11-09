# PROMPT TẠO ẢNH CAROUSEL TIKTOK
## Ngày: 23/07/2026
## Bài: ChatGPT chuyển ảnh bảng thành Excel
## Kênh: Tin Học Sao Việt

## HƯỚNG DẪN TẠO ẢNH BẰNG CHATGPT

Làm lần lượt từng slide, không dán toàn bộ file một lần.

> Ghi chú vận hành: nếu yêu cầu Codex "chạy ảnh", "tạo ảnh", "làm ảnh theo promptimage" hoặc "chạy 1 phát", Codex phải tự dùng model tạo ảnh để tạo lần lượt toàn bộ slide theo file này và lưu vào `23-07-2026/image/`. Không chỉ dừng ở việc viết prompt.

### Bước 1 — Mở model tạo ảnh

Vào ChatGPT → chọn model có tạo ảnh → bấm dấu + → Create image / Tạo ảnh.
Nếu có ô chọn tỷ lệ, chọn 9:16 hoặc Vertical.

### Bước 2 — Copy prompt cho từng slide

1. Copy toàn bộ STYLE BLOCK 9:16.
2. Copy thêm prompt của đúng slide cần tạo.
3. Dán cả 2 phần vào ChatGPT trong cùng một lần.
4. Nếu trong prompt có [STYLE BLOCK], thay bằng nội dung STYLE BLOCK 9:16 ở trên.

### Bước 3 — Lưu ảnh đúng tên

Lưu vào `23-07-2026/image/`, đặt tên `bai1_slide_1.png`, `bai1_slide_2.png`, ...

### Bước 4 — Nếu ảnh lỗi chữ

Yêu cầu ChatGPT sửa: "Giữ nguyên bố cục, làm chữ tiếng Việt rõ hơn, không sai dấu, không méo chữ, không cắt chữ ở cạnh. Giữ tỷ lệ 9:16."

## Ma trận visual

| Bài | Slide range | Template # | Nhóm visual | Layout family | Màu chủ đạo | Lý do chọn |
|-----|-------------|------------|-------------|---------------|-------------|------------|
| Bài 1 | Slide 1 | Prompt 10 | Bold Typography | Cover chữ lớn + icon AI/Excel | #5EB9F0, #343F52, #FAB758 | Hook cần đập vào mắt, đọc được trong 1 giây |
| Bài 1 | Slide 2-3 | Prompt 9 + 18 | Before/After + Workspace Productivity | Tình huống trước/sau, workspace card | #F0F8FE, #0077C8 | Diễn tả rõ nỗi đau gõ lại và cách nhanh hơn |
| Bài 1 | Slide 4-5 | Prompt 7 | Glassmorphism UI | Prompt box + checklist card | #041C3F, #5EB9F0, #FAB758 | Hợp nội dung ChatGPT, prompt và kiểm soát lỗi |
| Bài 1 | Slide 6 | Prompt 18 | Workspace Productivity | Flow CSV → Excel | #F0F8FE, #5EB9F0, #177B82 | Thể hiện thao tác chuyển dữ liệu |
| Bài 1 | Slide 7 | Prompt 5 | Infographic Timeline | Summary table/checklist | #FFFFFF, #0077C8, #FAB758 | Slide cuối để screenshot, dễ lưu |

## STYLE BLOCK 9:16

```text
Modern digital education TikTok carousel, vertical 1080x1920px, 9:16 ratio, Canva premium template feel, mobile-first design.

BRAND COLOR PALETTE (Tin Học Sao Việt):
- Background gradient: #F0F8FE to #E5F4FD.
- Primary: #5EB9F0.
- Dark: #343F52.
- Accent: #FAB758.
- CTA: #0077C8.
- White: #FFFFFF.
- Light fill: #E5F4FD.
- Teal: #177B82.
- Alert: #B30000.
- Subtext: #60697B.

CRITICAL TIKTOK SAFE ZONE:
All text, CTA buttons, badges, tables, and important icons must stay inside the central safe zone, visually centered in the middle of the frame.
- Canvas: 1080x1920.
- Absolute safe zone for text and key content: X=120 to X=960, Y=320 to Y=1480.
- Keep top area Y=0-320 visually clear for TikTok header/search UI.
- Keep bottom area Y=1480-1920 visually clear for TikTok caption/input/navigation UI.
- Keep right area X=960-1080 visually clear for TikTok like/comment/share buttons.
- Keep left area X=0-120 visually clear; do not let text or badges hug the edge.
- Main headline, body text, CTA, tables, and footer must be vertically centered within Y=320-1480, not merely inside the full canvas.
- Footer/brand bar, when allowed, must sit around Y=1380-1460 and remain inside X=120-960.
- Decorative background shapes may extend outside the safe zone only if they contain no text and are not important for understanding.
- Do not place any readable text, CTA, badge, table cell, or important icon near corners or edges.

Typography: ultra bold sans-serif, Vietnamese diacritics clear and sharp. Main headline 64-92pt, body text 34-46pt, small labels minimum 28pt.

Layout: clean vertical composition, generous spacing, strong hierarchy, big readable text on a phone. Use white cards, rounded 16px, subtle #5EB9F0 border and soft shadow.

Bottom brand bar (CHỈ slide đầu + slide cuối): compact footer inside safe zone, "Tin Học Sao Việt" in #343F52 with #FAB758 accent.

Avoid: square layout, tiny text, dense paragraphs, watermark, QR code, photorealistic screenshots, human faces unless requested, cluttered backgrounds, distorted Vietnamese text.

All Vietnamese text must be rendered with full, correct Vietnamese diacritics (dấu thanh + dấu mũ/móc). Do NOT omit, simplify, romanize, or alter any diacritical marks.
```

---

## Slide 1/7 — Cover Hook

Template visual đã chọn: Prompt 10 — Bold Typography.

```text
[STYLE BLOCK]

Create slide 1 as a bold typography-driven TikTok carousel cover.

Canvas: 1080x1920px vertical, 9:16.
Safe zone: keep all readable text inside X=120-960, Y=320-1480.

Text to render exactly:
"ĐỪNG GÕ LẠI"
"BẢNG TRONG ẢNH"
"ChatGPT chuyển thành Excel"
"trong 1 phút"
"Vuốt sang →"

Layout:
- Big stacked headline in #343F52 and #0077C8, centered upper-middle inside safe zone.
- Word "ĐỪNG" and "EXCEL" may use #FAB758 highlight accents.
- Add clean AI sparkle icon, small image-file icon, and Excel table icon as vector-style decorations.
- Orange CTA pill near lower safe zone: "Vuốt sang →".
- Footer: "Tin Học Sao Việt" inside compact brand bar around Y=1380-1460, within X=120-960.

Color palette: #F0F8FE background, #5EB9F0 primary blue, #343F52 dark navy, #FAB758 gold accent, #0077C8 CTA blue, #FFFFFF cards.

Avoid: logo image, app logos copied exactly, QR code, hotline, address, text near edges, extra text, distorted Vietnamese text.
All Vietnamese text must be rendered with full, correct Vietnamese diacritics.
```

## Slide 2/7 — Tình huống quen thuộc

Template visual đã chọn: Prompt 9 — Split Before/After.

```text
[STYLE BLOCK]

Create slide 2 as a vertical problem-situation carousel slide.

Canvas: 1080x1920px vertical, 9:16.
Safe zone: keep text and key visuals inside X=120-960, Y=320-1480.

Text to render exactly:
"Tình huống quen thuộc"
"Sếp gửi ảnh bảng dữ liệu"
"Bạn mở Excel lên..."
"và định gõ lại từng dòng"
"2/7"

Layout:
- Top-left gold step badge "02"; top-right small "2/7".
- White rounded card centered in safe zone.
- Left side: phone/image-file icon showing a blurry table.
- Right side: empty Excel-like grid icon with cursor/keycap, no real screenshot.
- Bottom note pill in #FAB758: "Cách cũ: gõ thủ công".
- No logo, no footer text.

Color palette: #F0F8FE to #E5F4FD background, #5EB9F0 borders, #343F52 headline, #60697B body, #FAB758 warning accent.

Avoid: human faces, tiny spreadsheet cells, extra labels, text outside safe zone, watermark, QR code.
All Vietnamese text must be rendered with full, correct Vietnamese diacritics.
```

## Slide 3/7 — Cách nhanh hơn

Template visual đã chọn: Prompt 18 — Workspace Productivity.

```text
[STYLE BLOCK]

Create slide 3 as a workspace productivity slide showing an AI workflow.

Canvas: 1080x1920px vertical, 9:16.
Safe zone: keep text and key visuals inside X=120-960, Y=320-1480.

Text to render exactly:
"Cách nhanh hơn"
"Tải ảnh bảng lên ChatGPT"
"Nhờ AI trích dữ liệu"
"thành bảng có cột rõ ràng"
"3/7"

Layout:
- Top-left gold step badge "03"; top-right small "3/7".
- Center: three connected white cards in a vertical flow:
  1. "Ảnh bảng"
  2. "ChatGPT đọc dữ liệu"
  3. "Bảng có cột rõ"
- Use simple icons: image file, AI chat bubble, table grid.
- Arrow connectors in #0077C8.
- No logo, no footer text.

Color palette: #F0F8FE, #FFFFFF cards, #5EB9F0, #0077C8, #FAB758, #343F52.

Avoid: full real ChatGPT screenshot, small unreadable text, robot character, cyberpunk, text near edges.
All Vietnamese text must be rendered with full, correct Vietnamese diacritics.
```

## Slide 4/7 — Câu lệnh mẫu

Template visual đã chọn: Prompt 7 — Glassmorphism UI.

```text
[STYLE BLOCK]

Create slide 4 as a clean prompt-box carousel slide.

Canvas: 1080x1920px vertical, 9:16.
Safe zone: keep text and key visuals inside X=120-960, Y=320-1480.

Text to render exactly:
"Câu lệnh mẫu"
"Đọc bảng trong ảnh này"
"và xuất dạng CSV"
"Giữ nguyên tên cột"
"4/7"

Layout:
- Top-left gold step badge "04"; top-right small "4/7".
- Dark navy glassmorphism background #041C3F to #343F52 but keep readable.
- Center white prompt card with monospaced-style text.
- Add small CSV file icon and table icon.
- Highlight "xuất dạng CSV" in #FAB758.
- No logo, no footer text.

Color palette: #041C3F, #343F52, #5EB9F0 glow, #FAB758 highlight, #FFFFFF prompt card.

Avoid: long paragraph, extra code, English text, tiny text, text near edges.
All Vietnamese text must be rendered with full, correct Vietnamese diacritics.
```

## Slide 5/7 — Kiểm soát lỗi

Template visual đã chọn: Prompt 7 — Glassmorphism UI + checklist card.

```text
[STYLE BLOCK]

Create slide 5 as a checklist / error-control carousel slide.

Canvas: 1080x1920px vertical, 9:16.
Safe zone: keep text and key visuals inside X=120-960, Y=320-1480.

Text to render exactly:
"Muốn sạch dữ liệu hơn"
"Ô nào khó đọc"
"hãy ghi:"
""cần kiểm tra""
"5/7"

Layout:
- Top-left gold step badge "05"; top-right small "5/7".
- Large white card in center with a mini table: 3 rows, one highlighted yellow cell labeled "cần kiểm tra".
- Add magnifier/check icon in #177B82.
- Use #B30000 only for small warning mark near blurry cell.
- Bottom note pill: "Đừng để AI tự đoán".
- No logo, no footer text.

Color palette: #F0F8FE background, #FFFFFF card, #5EB9F0 border, #FAB758 highlight, #177B82 check, #B30000 warning, #343F52 text.

Avoid: dense spreadsheet, extra text, fake logos, text outside safe zone.
All Vietnamese text must be rendered with full, correct Vietnamese diacritics.
```

## Slide 6/7 — Đưa vào Excel

Template visual đã chọn: Prompt 18 — Workspace Productivity.

```text
[STYLE BLOCK]

Create slide 6 as a CSV-to-Excel workflow slide.

Canvas: 1080x1920px vertical, 9:16.
Safe zone: keep text and key visuals inside X=120-960, Y=320-1480.

Text to render exactly:
"Đưa vào Excel"
"Copy CSV"
"Dán vào Excel hoặc Sheets"
"Kiểm tra ô "cần kiểm tra""
"6/7"

Layout:
- Top-left gold step badge "06"; top-right small "6/7".
- Center vertical flow with two big white cards:
  Card 1: CSV icon + "Copy CSV"
  Card 2: table grid icon + "Dán vào Excel hoặc Sheets"
- Add final green check pill: "Kiểm tra ô "cần kiểm tra"".
- Arrows in #0077C8 between cards.
- No logo, no footer text.

Color palette: #F0F8FE, #FFFFFF cards, #5EB9F0, #0077C8, #177B82, #FAB758, #343F52.

Avoid: real app logo copied exactly, tiny spreadsheet cells, extra text, text near edges.
All Vietnamese text must be rendered with full, correct Vietnamese diacritics.
```

## Slide 7/7 — Tóm tắt / Screenshot

Template visual đã chọn: Prompt 5 — Infographic Timeline.

```text
[STYLE BLOCK]

Create slide 7 as a screenshot-friendly summary card.

Canvas: 1080x1920px vertical, 9:16.
Safe zone: keep all text, table and CTA inside X=120-960, Y=320-1480.

Text to render exactly:
"CHỤP MÀN HÌNH SLIDE NÀY"
"1. Tải ảnh lên"
"2. Yêu cầu xuất CSV"
"3. Kiểm tra ô khó đọc"
"Lưu lại để dùng khi cần"

Layout:
- White rounded summary card centered in safe zone.
- Header in #0077C8: "CHỤP MÀN HÌNH SLIDE NÀY".
- Three-step checklist with numbered blue circles and icons: image, CSV, magnifier.
- CTA pill in #FAB758: "Lưu lại để dùng khi cần".
- Footer: "Tin Học Sao Việt" inside compact brand bar around Y=1380-1460, within X=120-960.

Color palette: #FFFFFF card, #F0F8FE background, #5EB9F0 step circles, #0077C8 header, #FAB758 CTA, #343F52 text.

Avoid: text near bottom edge, QR code, hotline, address, watermark, extra text.
All Vietnamese text must be rendered with full, correct Vietnamese diacritics.
```
