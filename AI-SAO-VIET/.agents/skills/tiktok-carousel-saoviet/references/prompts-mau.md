**HƯỚNG DẪN CÁCH SỬ DỤNG**

# Thư viện visual Sao Việt — v1.6.0

## Mục lục

- Prompt 1–4: Grid, poster, công nghệ và AI
- Prompt 5–9: Timeline, editorial, glassmorphism, workspace và before/after
- Prompt 10–14: Typography, feedback, pastel, dark premium và flat illustration
- Prompt 15–19: Seasonal, gradient, promotion, productivity và corporate

> [!IMPORTANT]
> **HARD SAFE-ZONE OVERRIDE — áp dụng cho cả 19 prompt và ghi đè mọi mô tả bố cục phía dưới.**
>
> - Canvas: `1080×1920px`, dọc `9:16`.
> - Envelope dự phòng: `X=90–930`, `Y=250–1640`; đây là profile project, không phải số đo TikTok bảo đảm mọi thiết bị.
> - Vùng làm việc ưu tiên: `X=120–920`, `Y=280–1580`; cụm nội dung chính mặc định `X=160–920`, cân quanh tâm canvas `X=540`.
> - Tất cả tiêu đề, phụ đề, nội dung, công thức, bảng, nhãn, badge, số trang, CTA, footer, brand text và icon quan trọng phải nằm trọn trong vùng làm việc ưu tiên.
> - Tiêu đề gợi ý: `Y=420–610`; nội dung chính: `Y=640–1500`; CTA: `Y=1390–1500`; footer: `Y=1530–1580`; số trang: `X=790–900`, `Y=290–350`.
> - Không đặt chữ ở bốn góc hoặc sát mép. Các vùng `Y=0–249`, `Y=1641–1919`, `X=0–89`, `X=931–1079` chỉ dành cho nền/trang trí không mang thông tin.
> - Nếu nội dung không vừa, rút gọn, reflow hoặc tách slide; không co cả artwork. Phần tử có nghĩa cuối nên chạm khoảng `Y=1380–1500` để tránh bó giữa.
> - Sau render phải mở ảnh kiểm tra. Một chữ/CTA/badge/footer/số trang chạm hoặc vượt safe zone là `FAIL` và phải render lại.
> - QA tâm thị giác: headline + module chính phải cân quanh X=540, trọng tâm trong X=520–560. Cụm nội dung gom trái và chừa khoảng trắng phải lớn là FAIL THIẾT KẾ dù vẫn nằm trong safe zone.
> - Palette/toạ độ/footer ghi trong từng template cũ chỉ là di sản. Khi dùng template, giữ cấu trúc nhưng thay bằng [hệ thiết kế hiện hành](design-system.md).
> - Tone Sao Việt mặc định: trắng/ice sáng, headline navy đậm, điểm neo xanh điện–cyan; vàng chỉ dùng khi có ngữ nghĩa. Palette riêng của Kế toán/Đồ họa được giữ nếu user/project quy định.

Bước 1: Truy cập [https://chatgpt.com/](https://chatgpt.com/)

Bước 2: Chọn dấu +  🡪 Create image

Bước 3: Chọn mẫu mong muốn bên dưới 🡪 Copy prompt dán vào chat.

Cách dùng: Thay `[KHÓA HỌC]` và `[CHI NHÁNH]`

Ví dụ: `[KHÓA HỌC]` = "Khóa Học Tin Học Văn Phòng Cấp Tốc",
`[CHI NHÁNH]` = "Tin Học Sao Việt"

> ⚠️ **TẤT CẢ 19 mẫu dưới đây đã chuẩn hoá sang khung DỌC 9:16 (1080×1920) cho TikTok / Reels carousel.**
> - Mọi text và nội dung chính nằm gọn trong **VÙNG AN TOÀN giữa khung: Y 280–1580px, X 120–920px**.
> - Chừa **top area (0–249px)** và **bottom area (1641–1919px)** trống cho giao diện TikTok (tên user, caption, nút like/share).
> - Bố cục **xếp dọc, căn giữa**, chữ to dễ đọc trên điện thoại.
> - **Chữ tiếng Việt PHẢI đủ dấu** (sắc/huyền/hỏi/ngã/nặng + â ê ô ơ ư ă đ). Mỗi prompt đã kèm câu yêu cầu giữ nguyên dấu.

Note thêm: Nếu muốn thêm ảnh lớp học / phần mềm thực tế thì Bấm + để chèn ảnh và yêu cầu giữ nguyên ảnh gốc 100%, hạn chế người do AI sinh ("less AI-generated look").

> [!IMPORTANT]
> **SOURCE LOCK — áp dụng trước nội dung mẫu bên dưới.** Chỉ render chữ đã được khóa trong Text Manifest của bài. Mọi số liệu, đánh giá, ưu đãi, học phí, ngày tháng, hotline, địa chỉ, chứng chỉ, cam kết, kết quả và lời chứng thực viết sẵn trong template chỉ là ví dụ cấu trúc; phải thay bằng dữ liệu đã được user hoặc nguồn project xác nhận, nếu không thì bỏ.
>
> **SOFTWARE UI LOCK.** Template không được ghi đè quy tắc giao diện thật. Bài hướng dẫn đường bấm trong phần mềm có thể mở phải ghép screenshot thật toàn cửa sổ/đủ ngữ cảnh. Bài khái niệm hoặc môn không có phần mềm được dùng infographic. Không dùng ImageGen tạo Ribbon, menu, hộp thoại, nút hoặc screenshot giả. Màn hình/card trang trí chỉ được là hình khối trừu tượng không có chữ và không được dùng làm bằng chứng thao tác.

---

## CÂU CHUNG (đã nhúng sẵn trong mỗi prompt)

```
Canvas: 1080×1920px vertical (9:16), TikTok / Reels carousel, mobile-first.
SAFE ZONE (critical): keep ALL text and key content inside the center safe zone (Y 280–1580px, X 120–920px), centered in the middle of the frame. Top area (0–249px) and bottom area (1641–1919px) MUST stay visually clear for TikTok UI (username, caption, like/share buttons). Do NOT place any text near the top or bottom edges.
HARD SAFE-ZONE LOCK — NON-NEGOTIABLE: Put every readable word and every meaningful element completely inside X=120..920 and Y=280..1580. OPTICAL CENTER LOCK: center the primary headline and content modules on canvas axis X=540; use X=160..920 as the default primary column and keep the visual-weight centroid within X=520..560, excluding page number and background decoration. This includes headline, subtitle, body copy, formulas, labels, badges, page number, CTA, footer, brand text, tables, and meaningful icons. Use Y=420..610 for headline, Y=640..1500 for main content, Y=1390..1500 for CTA, and Y=1530..1580 for footer. Keep X=0..89, X=931..1079, Y=0..249, and Y=1641..1919 free of all text and important content. Background decoration only may extend outside. Shorten, reflow, or split overloaded content; never shrink the complete artwork or use unsafe margins to solve overflow.
All Vietnamese text must be rendered with full, correct Vietnamese diacritics (dấu thanh + dấu mũ/móc). Do NOT omit, simplify, romanize, or alter any diacritical marks.
```

---

PROMPT MẪU

## PROMPT 1: Canva Grid Dọc — Chiến Dịch 4 Khung

> Phù hợp: Cover carousel tổng quan khóa học — 4 khung kể chuyện theo chiều dọc.

```
Create a modern vertical 4-panel Canva-style educational carousel image (1080×1920px, 9:16 ratio).

COURSE: [KHÓA HỌC]
BRAND: [CHI NHÁNH]

SAFE ZONE (critical): all 4 panels stacked vertically inside the center safe zone (Y 280–1580px, X 120–920px), centered in the middle. Top area and bottom area stay clear for TikTok UI. No text near edges.
HARD SAFE-ZONE LOCK — NON-NEGOTIABLE: Every readable word and meaningful element must fit completely inside X=120..920 and Y=280..1580. OPTICAL CENTER LOCK: center the primary headline and content modules on canvas axis X=540; use X=160..920 as the default primary column and keep the visual-weight centroid within X=520..560, excluding page number and background decoration. Headline Y=420..610; main content Y=640..1500; CTA Y=1390..1500; footer Y=1530..1580; page number X=790..900 and Y=290..350. Keep all text and important content out of X=0..89, X=931..1079, Y=0..249, and Y=1641..1919. Background decoration only may extend outside. Shorten, reflow, or split overloaded content; never shrink the complete artwork.

Style: bright, clean, modern education ads, realistic Canva poster design, highly readable, professional educational marketing.

Color palette: #F0F8FE background, #5EB9F0 primary blue, #343F52 deep navy, #FAB758 gold accent, #0077C8 CTA blue, #FFFFFF cards.

Layout: 4 connected panels stacked TOP→BOTTOM (each ~300px tall, rounded #FFFFFF cards, 16px radius, soft shadow), different composition but one unified campaign:
- Panel 1 (top): course introduction with professional workspace + abstract non-readable workflow shapes; if exact software UI is required, leave a blank frame for a real screenshot.
- Panel 2: common beginner problems / messy workflow related to the course.
- Panel 3: learning transformation and optimized workflow.
- Panel 4 (bottom of safe zone): professional result, completed projects, success.

Footer (inside bottom of safe zone, NOT image edge): "[CHI NHÁNH]" in #343F52 with a small #FAB758 star.

Requirements: premium typography, balanced vertical composition, social-media friendly, less AI-generated look.
Avoid: watermark, QR code, hotline, address, human faces, cyberpunk, holograms, robots, messy layouts, text outside safe zone.
All Vietnamese text must be rendered with full, correct Vietnamese diacritics. Do NOT omit, simplify, romanize, or alter any diacritical marks.
```

---

## PROMPT 2: TikTok Poster — Tuyển Dụng / Khai Giảng

> Phù hợp: Slide cover tuyển dụng, khai giảng, mời đăng ký.

```
Design a vertical TikTok poster (1080×1920px, 9:16 ratio).

TIÊU ĐỀ / VỊ TRÍ: [TIÊU ĐỀ CHÍNH]
BRAND: [CHI NHÁNH]

SAFE ZONE (critical): one large #FFFFFF card centered vertically inside the safe zone (Y 280–1580px, X 120–920px). Top area and bottom area empty for TikTok UI. No text near edges.
HARD SAFE-ZONE LOCK — NON-NEGOTIABLE: Every readable word and meaningful element must fit completely inside X=120..920 and Y=280..1580. OPTICAL CENTER LOCK: center the primary headline and content modules on canvas axis X=540; use X=160..920 as the default primary column and keep the visual-weight centroid within X=520..560, excluding page number and background decoration. Headline Y=420..610; main content Y=640..1500; CTA Y=1390..1500; footer Y=1530..1580; page number X=790..900 and Y=290..350. Keep all text and important content out of X=0..89, X=931..1079, Y=0..249, and Y=1641..1919. Background decoration only may extend outside. Shorten, reflow, or split overloaded content; never shrink the complete artwork.

BRAND COLOR PALETTE (strict):
- Primary #5EB9F0, Dark #343F52, Accent #FAB758, Background #F0F8FE, CTA #0077C8, White #FFFFFF.

Style: modern recruitment / opening-class poster, Canva premium template feel, bold and attention-grabbing, optimized for phone screens.

Layout (centered card, generous white space, big #343F52 typography):
- Top of card: small pill badge in #5EB9F0 with white text label.
- Main headline: "[TIÊU ĐỀ CHÍNH]" in bold #343F52, ultra readable.
- Subtitle line in #5EB9F0.
- 3 verified benefit pills (rounded, #FAB758 icon + #343F52 text) stacked or in a row: `[LỢI ÍCH 1]` · `[LỢI ÍCH 2]` · `[LỢI ÍCH 3]`.
- Relevant #5EB9F0 icons matching the subject (laptop, software, drawings, 3D).
- CTA button: rounded #0077C8 with white text "[CTA]" (vd "ỨNG TUYỂN NGAY").
- Footer (inside bottom of safe zone): "[CHI NHÁNH]" centered #343F52 on a soft #E5F4FD strip.

Avoid: watermark, QR code, cluttered design, generic stock-photo look, text near edges.
All Vietnamese text must be rendered with full, correct Vietnamese diacritics. Do NOT omit, simplify, romanize, or alter any diacritical marks.
```

---

## PROMPT 3: Neon Tech Dọc — AI & Công Nghệ

> Phù hợp: Khóa AI, Lập trình, Marketing Online — tông tối hiện đại.

```
Design a modern vertical tech-education image (1080×1920px, 9:16 ratio).

COURSE: [KHÓA HỌC]
BRAND: [CHI NHÁNH]

SAFE ZONE (critical): all headline, subheadline, CTA and key visuals inside the center safe zone (Y 280–1580px, X 120–920px), centered. Top area and bottom area stay clear for TikTok UI.
HARD SAFE-ZONE LOCK — NON-NEGOTIABLE: Every readable word and meaningful element must fit completely inside X=120..920 and Y=280..1580. OPTICAL CENTER LOCK: center the primary headline and content modules on canvas axis X=540; use X=160..920 as the default primary column and keep the visual-weight centroid within X=520..560, excluding page number and background decoration. Headline Y=420..610; main content Y=640..1500; CTA Y=1390..1500; footer Y=1530..1580; page number X=790..900 and Y=290..350. Keep all text and important content out of X=0..89, X=931..1079, Y=0..249, and Y=1641..1919. Background decoration only may extend outside. Shorten, reflow, or split overloaded content; never shrink the complete artwork.

BRAND COLOR PALETTE (strict):
- Background gradient #041C3F (dark navy) → #343F52, fills full 1080×1920.
- Primary glow #5EB9F0, secondary glow #0077C8, accent #FAB758.
- Text #FFFFFF headlines, #E5F4FD subtext.

Scene: professional workspace transformation — course-related software, smart workflows, productivity tools on screen, dark professional atmosphere. Floating UI cards with subtle #5EB9F0 glow, #5EB9F0 connecting lines, #FAB758 highlight data points. Auto-adapt to the course.

Text (Vietnamese, stacked vertically, centered):
- Headline: "[KHÓA HỌC]" bold #FFFFFF (min 56pt).
- Subheadline: "HỌC THỰC HÀNH — ỨNG DỤNG NGAY" in #5EB9F0.
- CTA: glowing #5EB9F0 border button, white text "[CTA]" (vd "ĐĂNG KÝ NGAY").
- Footer (inside bottom of safe zone): "[CHI NHÁNH]" in #FAB758.

Style: modern tech banner, premium typography, clean vertical layout, subtle neon glow (not overwhelming).
Avoid: clutter, watermark, QR code, overly sci-fi look, text near edges.
All Vietnamese text must be rendered with full, correct Vietnamese diacritics. Do NOT omit, simplify, romanize, or alter any diacritical marks.
```

---

## PROMPT 4: Banner Khoá Học — Futuristic AI Dọc

> Phù hợp: Cover khóa AI nhiều thông tin (label + tiêu đề + benefit + tool).

```
Design a modern high-conversion AI education image (1080×1920px, 9:16 ratio).

COURSE: [KHÓA HỌC]
BRAND: [CHI NHÁNH]

SAFE ZONE (critical): typography block in the upper-middle of the safe zone, AI workspace visualization in the lower-middle — ALL inside Y 280–1580px, X 120–920px, centered. Top area and bottom area empty for TikTok UI.
HARD SAFE-ZONE LOCK — NON-NEGOTIABLE: Every readable word and meaningful element must fit completely inside X=120..920 and Y=280..1580. OPTICAL CENTER LOCK: center the primary headline and content modules on canvas axis X=540; use X=160..920 as the default primary column and keep the visual-weight centroid within X=520..560, excluding page number and background decoration. Headline Y=420..610; main content Y=640..1500; CTA Y=1390..1500; footer Y=1530..1580; page number X=790..900 and Y=290..350. Keep all text and important content out of X=0..89, X=931..1079, Y=0..249, and Y=1641..1919. Background decoration only may extend outside. Shorten, reflow, or split overloaded content; never shrink the complete artwork.

BRAND COLOR PALETTE (strict):
- Background gradient #F4F7FC (soft white blue) → #DDEBFF (light futuristic blue).
- Primary #0037A6 (deep royal blue), secondary glow #00C2D8 (cyan neon), accent #FF8A00 (orange CTA).
- Text #0B1F45 and #FFFFFF.

Scene (lower-middle): futuristic AI-powered productivity workspace — sleek laptop with AI assistant interface, floating AI workflow cards connected by glowing neon lines, soft blue glow, glassmorphism UI, productivity dashboard. Auto-adapt to course.

Text (ALL UPPERCASE Vietnamese, stacked, centered):
- Small top label: "[LABEL NHỎ]"
- Main headline (2–3 lines): "[DÒNG TIÊU ĐỀ 1]" / "[DÒNG TIÊU ĐỀ 2]" / "[DÒNG TIÊU ĐỀ 3]"
- Supporting headline: "[SUBHEADLINE]"
- 3–4 benefit labels: "[BENEFIT 1]" · "[BENEFIT 2]" · "[BENEFIT 3]" · "[BENEFIT 4]"
- Floating AI cards: "[AI TOOL 1]" … "[AI TOOL 4]"
- CTA button: "[CTA]"
- Footer (inside bottom of safe zone): "[CHI NHÁNH]"

Typography: ultra bold sans-serif, giant gradient headline, premium corporate layout, strong readability on phone.
Style: premium AI education, modern corporate tech, subtle neon glow, glassmorphism, 3D glossy, clean professional.
Avoid: clutter, watermark, QR code, distorted text, cartoon style, dark unreadable composition, text near edges.
All Vietnamese text must be rendered with full, correct Vietnamese diacritics. Do NOT omit, simplify, romanize, or alter any diacritical marks.
```

---

## PROMPT 5: Infographic Timeline — Lộ Trình Học

> Phù hợp: Slide nội dung — giới thiệu lộ trình khóa học chi tiết.

```
Design a vertical infographic learning-roadmap image (1080×1920px, 9:16 ratio).

COURSE: [KHÓA HỌC]
BRAND: [CHI NHÁNH]

SAFE ZONE (critical): header + 5-step vertical timeline ALL inside the center safe zone (Y 280–1580px, X 120–920px). Top area and bottom area stay clear for TikTok UI.
HARD SAFE-ZONE LOCK — NON-NEGOTIABLE: Every readable word and meaningful element must fit completely inside X=120..920 and Y=280..1580. OPTICAL CENTER LOCK: center the primary headline and content modules on canvas axis X=540; use X=160..920 as the default primary column and keep the visual-weight centroid within X=520..560, excluding page number and background decoration. Headline Y=420..610; main content Y=640..1500; CTA Y=1390..1500; footer Y=1530..1580; page number X=790..900 and Y=290..350. Keep all text and important content out of X=0..89, X=931..1079, Y=0..249, and Y=1641..1919. Background decoration only may extend outside. Shorten, reflow, or split overloaded content; never shrink the complete artwork.

BRAND COLOR PALETTE (strict):
- Background #FFFFFF / soft #F0F8FE.
- Primary #5EB9F0 (timeline line, step badges, icons), Dark #343F52 (headings), Accent #FAB758 (milestone, final step), CTA #0077C8, light section #E5F4FD, subtext #60697B.

Header (top of safe zone):
- "[CHI NHÁNH]" in #5EB9F0 small text.
- "LỘ TRÌNH HỌC [KHÓA HỌC]" bold #343F52.
- Subtitle "Từ zero đến chuyên nghiệp" in #60697B.

Vertical timeline — 5 milestones connected by a #5EB9F0 dotted line down the center (auto-adapt to course):
1. "TUẦN 1-2" — nền tảng cơ bản.
2. "TUẦN 3-4" — kỹ năng lõi, thực hành.
3. "TUẦN 5-6" — kỹ thuật nâng cao, dự án thật.
4. "TUẦN 7-8" — quy trình chuyên nghiệp, portfolio.
5. "HOÀN THÀNH" — chứng chỉ, sẵn sàng đi làm (badge #FAB758).

Each step: numbered circle badge #5EB9F0 (final #FAB758) + bold #343F52 title + 2-line #60697B description + small #5EB9F0 icon.

Footer (inside bottom of safe zone): #0077C8 pill with white text "[CTA]" (vd "ĐĂNG KÝ NGAY") and "[CHI NHÁNH]".

Avoid: photos, human figures, watermark, QR code, cluttered design, text near edges.
All Vietnamese text must be rendered with full, correct Vietnamese diacritics. Do NOT omit, simplify, romanize, or alter any diacritical marks.
```

---

## PROMPT 6: Magazine Editorial Dọc — Tạp Chí Biên Tập

> Phù hợp: Tông cao cấp, branding — bố cục tạp chí xếp dọc.

```
Design a premium magazine-style editorial education image (1080×1920px, 9:16 ratio).

COURSE: [KHÓA HỌC]
BRAND: [CHI NHÁNH]

SAFE ZONE (critical): editorial layout stacked top→bottom inside the center safe zone (Y 280–1580px, X 120–920px), centered. Top area and bottom area empty for TikTok UI.
HARD SAFE-ZONE LOCK — NON-NEGOTIABLE: Every readable word and meaningful element must fit completely inside X=120..920 and Y=280..1580. OPTICAL CENTER LOCK: center the primary headline and content modules on canvas axis X=540; use X=160..920 as the default primary column and keep the visual-weight centroid within X=520..560, excluding page number and background decoration. Headline Y=420..610; main content Y=640..1500; CTA Y=1390..1500; footer Y=1530..1580; page number X=790..900 and Y=290..350. Keep all text and important content out of X=0..89, X=931..1079, Y=0..249, and Y=1641..1919. Background decoration only may extend outside. Shorten, reflow, or split overloaded content; never shrink the complete artwork.

BRAND COLOR PALETTE (strict):
- Background #F0F8FE (warm ice white). Headline #343F52. Rule lines #5EB9F0. Pull quote #0077C8. Category label #FAB758. Body #60697B. Info boxes #E5F4FD with #343F52 text.

Style: high-end editorial magazine, sophisticated typography, generous whitespace, premium paper feel.

Layout (vertical):
- Top: small #FAB758 category label "EDUCATION / [course category]"; large serif headline #343F52 "[KHÓA HỌC]"; thin #5EB9F0 rule line.
- Middle: editorial body text in #60697B with a larger italic #0077C8 pull quote; below it a clean flat-lay of course-related objects (laptop, notebook, tools) on a clean desk.
- Lower: 3 info boxes on #E5F4FD — "Thời lượng: 2 tháng" · "Hình thức: Thực hành" · "Chứng chỉ: Có" (#343F52).
- Footer (inside bottom of safe zone): "[CHI NHÁNH]" in #343F52 elegant small caps.

Typography: serif headlines, sans-serif body #60697B.
Avoid: neon colors, harsh gradients, cartoon icons, clutter, text near edges.
All Vietnamese text must be rendered with full, correct Vietnamese diacritics. Do NOT omit, simplify, romanize, or alter any diacritical marks.
```

---

## PROMPT 7: Glassmorphism UI — Kính Mờ Hiện Đại

> Phù hợp: Cover khóa tech, design, AI — tông tối trendy.

```
Design a glassmorphism-style vertical education image (1080×1920px, 9:16 ratio).

COURSE: [KHÓA HỌC]
BRAND: [CHI NHÁNH]

SAFE ZONE (critical): the central glass card + stat cards centered inside the safe zone (Y 280–1580px, X 120–920px). Top area and bottom area stay clear for TikTok UI.
HARD SAFE-ZONE LOCK — NON-NEGOTIABLE: Every readable word and meaningful element must fit completely inside X=120..920 and Y=280..1580. OPTICAL CENTER LOCK: center the primary headline and content modules on canvas axis X=540; use X=160..920 as the default primary column and keep the visual-weight centroid within X=520..560, excluding page number and background decoration. Headline Y=420..610; main content Y=640..1500; CTA Y=1390..1500; footer Y=1530..1580; page number X=790..900 and Y=290..350. Keep all text and important content out of X=0..89, X=931..1079, Y=0..249, and Y=1641..1919. Background decoration only may extend outside. Shorten, reflow, or split overloaded content; never shrink the complete artwork.

BRAND COLOR PALETTE (strict):
- Background gradient #041C3F → #343F52 (full frame), with blurred gradient blobs #5EB9F0 / #0077C8 / #FAB758.
- Glass cards rgba(255,255,255,0.15) with #5EB9F0 border glow. Text #FFFFFF headlines, #E5F4FD subtext. Stat numbers #FAB758.

Layout (vertical, centered):
- Floating frosted glass card (center, ~80% width): course name "[KHÓA HỌC]" bold #FFFFFF; 3 verified feature pills `[LỢI ÍCH 1]` · `[LỢI ÍCH 2]` · `[LỢI ÍCH 3]` in frosted glass with #5EB9F0 text.
- Above card: abstract non-readable glass panels and geometric tool symbols; never imitate an exact application UI.
- Below card: "[CHI NHÁNH]" in #FAB758 with subtle glow.
- Bottom of safe zone: up to 3 small glass stat cards `[SỐ LIỆU 1]` · `[SỐ LIỆU 2]` · `[SỐ LIỆU 3]`, used only when verified; otherwise omit them.

Style: modern glassmorphism UI, frosted glass, soft depth layers, app-like, mobile-optimized.
Avoid: flat design, photos, retro style, clutter, text near edges.
All Vietnamese text must be rendered with full, correct Vietnamese diacritics. Do NOT omit, simplify, romanize, or alter any diacritical marks.
```

---

## PROMPT 8: Isometric 3D Workspace Dọc

> Phù hợp: Cover khóa học — minh hoạ 3D bàn làm việc thân thiện.

```
Design an isometric 3D workspace education image (1080×1920px, 9:16 ratio).

COURSE: [KHÓA HỌC]
BRAND: [CHI NHÁNH]

SAFE ZONE (critical): isometric scene in the middle, text above/below it — ALL inside the center safe zone (Y 280–1580px, X 120–920px), centered. Top area and bottom area empty for TikTok UI.
HARD SAFE-ZONE LOCK — NON-NEGOTIABLE: Every readable word and meaningful element must fit completely inside X=120..920 and Y=280..1580. OPTICAL CENTER LOCK: center the primary headline and content modules on canvas axis X=540; use X=160..920 as the default primary column and keep the visual-weight centroid within X=520..560, excluding page number and background decoration. Headline Y=420..610; main content Y=640..1500; CTA Y=1390..1500; footer Y=1530..1580; page number X=790..900 and Y=290..350. Keep all text and important content out of X=0..89, X=931..1079, Y=0..249, and Y=1641..1919. Background decoration only may extend outside. Shorten, reflow, or split overloaded content; never shrink the complete artwork.

BRAND COLOR PALETTE (strict):
- Background #F0F8FE. Workspace elements #5EB9F0. Dark elements #343F52. Accent #FAB758. Abstract non-readable screen shapes #0077C8. Soft shadows #343F52 at 10%.

Style: clean isometric 3D illustration, modern flat-3D hybrid, colorful but on-brand.

Layout (vertical):
- Top text: "[KHÓA HỌC]" bold #343F52; below "Học thực hành — Ứng dụng ngay" in #60697B.
- Center isometric desk scene (auto-adapt): laptop/monitor #343F52 showing course software with #5EB9F0 UI; relevant tools in #5EB9F0/#343F52; floating 3D icons in #FAB758 (certificate, progress bars, lightbulb, star); decorative plant, coffee cup in muted brand tones.
- CTA badge: floating #0077C8 rounded button "[CTA]" (vd "TÌM HIỂU THÊM") with white text + 3D shadow.
- Footer (inside bottom of safe zone): "[CHI NHÁNH]" on a #5EB9F0 bar with white text.

Avoid: photos, dark themes, complex scenes, human faces, text-heavy layout, text near edges.
All Vietnamese text must be rendered with full, correct Vietnamese diacritics. Do NOT omit, simplify, romanize, or alter any diacritical marks.
```

---

## PROMPT 9: Split Before/After — Trên/Dưới So Sánh

> Phù hợp: Slide so sánh hiệu quả — chia TRÊN (trước) / DƯỚI (sau) theo chiều dọc.

```
Design a vertical before/after comparison education image (1080×1920px, 9:16 ratio).

COURSE: [KHÓA HỌC]
BRAND: [CHI NHÁNH]

SAFE ZONE (critical): top half = "TRƯỚC", bottom half = "SAU", split horizontally, ALL inside the center safe zone (Y 280–1580px, X 120–920px). Top area and bottom area of the IMAGE stay clear for TikTok UI.
HARD SAFE-ZONE LOCK — NON-NEGOTIABLE: Every readable word and meaningful element must fit completely inside X=120..920 and Y=280..1580. OPTICAL CENTER LOCK: center the primary headline and content modules on canvas axis X=540; use X=160..920 as the default primary column and keep the visual-weight centroid within X=520..560, excluding page number and background decoration. Headline Y=420..610; main content Y=640..1500; CTA Y=1390..1500; footer Y=1530..1580; page number X=790..900 and Y=290..350. Keep all text and important content out of X=0..89, X=931..1079, Y=0..249, and Y=1641..1919. Background decoration only may extend outside. Shorten, reflow, or split overloaded content; never shrink the complete artwork.

BRAND COLOR PALETTE (strict):
- TOP (Before): desaturated #343F52 tones, muted grays, subtle #B30000 warning accents.
- BOTTOM (After): vibrant #5EB9F0 + #FAB758 success tones, bright #E5F4FD background.
- Divider: bold horizontal line with #0077C8 → #5EB9F0 gradient + a down arrow in #0077C8.
- Labels: "TRƯỚC" badge #B30000, "SAU" badge #5EB9F0.

Layout (vertical 50/50 inside safe zone):
- TOP "TRƯỚC KHI HỌC": messy desk, scattered papers, error screens, low-contrast muted #343F52.
- BOTTOM "SAU KHI HỌC [KHÓA HỌC]": clean workspace in bright #E5F4FD, professional completed project, #FAB758 stars, #5EB9F0 checkmarks.
- Center: title "[KHÓA HỌC]" in #343F52 on the divider.
- Footer (inside bottom of safe zone): "[CHI NHÁNH]" + "[CTA]" pill in #FAB758 with #343F52 text.

Avoid: human faces, watermark, QR code, too much text, text near edges.
All Vietnamese text must be rendered with full, correct Vietnamese diacritics. Do NOT omit, simplify, romanize, or alter any diacritical marks.
```

---

## PROMPT 10: Bold Typography — Chữ Lớn Tối Giản

> Phù hợp: Cover/CTA impact mạnh — chữ lớn nhưng vẫn nằm trọn trong vùng làm việc `X=180–900, Y=300–1420`.

```
Design a bold typography-driven education image (1080×1920px, 9:16 ratio).

COURSE: [KHÓA HỌC]
BRAND: [CHI NHÁNH]

SAFE ZONE (critical): all typography centered inside the safe zone (Y 280–1580px, X 120–920px). Top area and bottom area empty for TikTok UI. No text near edges.
HARD SAFE-ZONE LOCK — NON-NEGOTIABLE: Every readable word and meaningful element must fit completely inside X=120..920 and Y=280..1580. OPTICAL CENTER LOCK: center the primary headline and content modules on canvas axis X=540; use X=160..920 as the default primary column and keep the visual-weight centroid within X=520..560, excluding page number and background decoration. Headline Y=420..610; main content Y=640..1500; CTA Y=1390..1500; footer Y=1530..1580; page number X=790..900 and Y=290..350. Keep all text and important content out of X=0..89, X=931..1079, Y=0..249, and Y=1641..1919. Background decoration only may extend outside. Shorten, reflow, or split overloaded content; never shrink the complete artwork.

BRAND COLOR PALETTE (strict):
- Background solid #5EB9F0 (signature Sao Việt blue), full frame.
- Text #FFFFFF (all typography). Accent shape #FAB758. Small text #E5F4FD.

Style: Swiss/International typographic poster, text-dominant, extreme bold, maximum readability on phone.

Layout (vertical, centered):
- "[KHÓA HỌC]" fills ~45% of the safe zone in ULTRA BOLD condensed white sans-serif, stacked lines, tight leading, maximum impact.
- Thin #FFFFFF horizontal rule.
- "[CTA]" (vd "ĐĂNG KÝ NGAY") in bold #FAB758, ~25% size of headline.
- Footer (inside bottom of safe zone): "[CHI NHÁNH]" in thin white small caps, wide letter-spacing.
- One #FAB758 geometric accent shape (diagonal stripe or corner block, ~10% area); subtle white halftone dots (3%); strict grid.

Typography: extra-bold condensed sans-serif.
Avoid: images, icons, illustrations, multiple colors, decorative fonts, text near edges.
All Vietnamese text must be rendered with full, correct Vietnamese diacritics. Do NOT omit, simplify, romanize, or alter any diacritical marks.
```

---

## PROMPT 11: Feedback Học Viên — Review Messenger

> Phù hợp: Slide review/cảm nhận học viên (có thể chèn ảnh review thật).

```
Design a vertical student-feedback education image (1080×1920px, 9:16 ratio) in the "Tin học Sao Việt" brand style.

(Chỉ dùng feedback thật đã được cung cấp/xác nhận: chèn ảnh nguồn và giữ nguyên 100%. Nếu không có feedback thật, đổi slide thành FAQ/lợi ích; không tạo lời chứng thực giả.)

SAFE ZONE (critical): badge + title + feedback cards + advantage panel + CTA stacked vertically inside the center safe zone (Y 280–1580px, X 120–920px). Top area and bottom area stay clear for TikTok UI.
HARD SAFE-ZONE LOCK — NON-NEGOTIABLE: Every readable word and meaningful element must fit completely inside X=120..920 and Y=280..1580. OPTICAL CENTER LOCK: center the primary headline and content modules on canvas axis X=540; use X=160..920 as the default primary column and keep the visual-weight centroid within X=520..560, excluding page number and background decoration. Headline Y=420..610; main content Y=640..1500; CTA Y=1390..1500; footer Y=1530..1580; page number X=790..900 and Y=290..350. Keep all text and important content out of X=0..89, X=931..1079, Y=0..249, and Y=1641..1919. Background decoration only may extend outside. Shorten, reflow, or split overloaded content; never shrink the complete artwork.

PLACEHOLDERS:
MAIN TITLE: [TIÊU ĐỀ CHÍNH] · SUB TITLE: [TIÊU ĐỀ PHỤ] · COURSE: [KHÓA HỌC] · CTA: [NỘI DUNG CTA] · BRAND: [CHI NHÁNH] · HASHTAG: [HASHTAG]
FEEDBACK: [FEEDBACK 1] / [FEEDBACK 2] / [FEEDBACK 3]
ADVANTAGE: [TIÊU ĐỀ CAM KẾT] + [ƯU ĐIỂM 1..5]

BRAND COLOR PALETTE (strict): Background #F0F8FE, Primary #5EB9F0, Deep blue #0077C8, Dark #343F52, Subtext #60697B, Accent #FAB758, White #FFFFFF, soft shadow rgba(52,63,82,0.10). NO purple, NO dark background.

Layout (vertical, centered):
- Top badge pill: "FEEDBACK HỌC VIÊN" (#5EB9F0 fill, white text, soft shadow).
- Headline "[TIÊU ĐỀ CHÍNH]" heavy bold #343F52, keywords in #0077C8, optional #FAB758 highlight.
- Sub title "[TIÊU ĐỀ PHỤ]" in #60697B; course "[KHÓA HỌC]" emphasized in #0077C8.
- Middle: đặt 2–3 ảnh feedback thật đã được cung cấp vào card trung tính, giữ nguyên nội dung nguồn. Không vẽ lại giao diện Messenger/Facebook và không tự sinh `[FEEDBACK 1..3]`.
- Advantage card (rounded white, blue header) "[TIÊU ĐỀ CAM KẾT]" + checklist ✔ [ƯU ĐIỂM 1..5] (#343F52 text, #5EB9F0 icons).
- CTA strip: deep blue gradient (#5EB9F0 → #0077C8) rounded card, white bold "[NỘI DUNG CTA]"; gold button "ĐĂNG KÝ NGAY" (#FAB758, #343F52 text).
- Footer (inside bottom of safe zone): #5EB9F0 strip "[CHI NHÁNH]" + "[HASHTAG]" white text.

Background: ice white → soft blue gradient, soft ambient blue light, subtle floating 3D icons (trophy, heart, chat bubble, star, certificate), minimal particles.
Avoid: purple theme, dark backgrounds, realistic human figures, tiny unreadable text, messy layout, comic stickers, text near edges.
All Vietnamese text must be rendered with full, correct Vietnamese diacritics. Do NOT omit, simplify, romanize, or alter any diacritical marks.
```

---

## PROMPT 12: Pastel Friendly — Nhẹ Nhàng Cho Trẻ Em

> Phù hợp: Lập trình trẻ em Scratch/Python — phụ huynh + trẻ em.

```
Design a friendly pastel education image for a kids coding class (1080×1920px, 9:16 ratio).

COURSE: [KHÓA HỌC]
BRAND: [CHI NHÁNH]

SAFE ZONE (critical): illustration + title + bubbles centered inside the safe zone (Y 280–1580px, X 120–920px). Top area and bottom area empty for TikTok UI.
HARD SAFE-ZONE LOCK — NON-NEGOTIABLE: Every readable word and meaningful element must fit completely inside X=120..920 and Y=280..1580. OPTICAL CENTER LOCK: center the primary headline and content modules on canvas axis X=540; use X=160..920 as the default primary column and keep the visual-weight centroid within X=520..560, excluding page number and background decoration. Headline Y=420..610; main content Y=640..1500; CTA Y=1390..1500; footer Y=1530..1580; page number X=790..900 and Y=290..350. Keep all text and important content out of X=0..89, X=931..1079, Y=0..249, and Y=1641..1919. Background decoration only may extend outside. Shorten, reflow, or split overloaded content; never shrink the complete artwork.

BRAND COLOR PALETTE (pastel adaptation):
- Background #F0F8FE. Primary soft sky blue (#5EB9F0 at 50%). Accent soft sunny yellow (#FAB758 at 60%). Supporting pastels: mint #B8E6D0, lavender #C7C4E8, peach #F5C4B8. Text #343F52. White cards with soft shadows.

Style: soft pastel children's education, playful but not childish, appeals to kids AND parents, modern Scandinavian illustration.

Layout (vertical, centered):
- Top: "[CHI NHÁNH]" in friendly rounded #343F52 sans-serif.
- Center: large playful illustration of the subject in pastel brand colors (colorful code blocks for Scratch, friendly robot/laptop for Python); floating pastel stars, lightbulbs, gears, game controller.
- Title "[KHÓA HỌC]" bold rounded #343F52, slightly tilted; subtitle "Dành cho bé từ 6-15 tuổi" in #60697B.
- 3 benefit bubbles (rounded pills, soft sky blue): "Tư duy logic" · "Sáng tạo" · "Vui học".
- Footer (inside bottom of safe zone): "[CHI NHÁNH]" with small #FAB758 stars.

All corners rounded, soft shadows, gentle on eyes.
Avoid: dark colors, sharp design, realistic humans, complex layouts, neon, text near edges.
All Vietnamese text must be rendered with full, correct Vietnamese diacritics. Do NOT omit, simplify, romanize, or alter any diacritical marks.
```

---

## PROMPT 13: Dark Premium — Sang Trọng Tông Tối

> Phù hợp: Khóa cao cấp, MOS, IC3, đào tạo doanh nghiệp.

```
Design a premium dark-theme vertical education image (1080×1920px, 9:16 ratio).

COURSE: [KHÓA HỌC]
BRAND: [CHI NHÁNH]

SAFE ZONE (critical): headline block (upper-middle) + premium 3D render (lower-middle) inside the center safe zone (Y 280–1580px, X 120–920px), centered. Top area and bottom area empty for TikTok UI.
HARD SAFE-ZONE LOCK — NON-NEGOTIABLE: Every readable word and meaningful element must fit completely inside X=120..920 and Y=280..1580. OPTICAL CENTER LOCK: center the primary headline and content modules on canvas axis X=540; use X=160..920 as the default primary column and keep the visual-weight centroid within X=520..560, excluding page number and background decoration. Headline Y=420..610; main content Y=640..1500; CTA Y=1390..1500; footer Y=1530..1580; page number X=790..900 and Y=290..350. Keep all text and important content out of X=0..89, X=931..1079, Y=0..249, and Y=1641..1919. Background decoration only may extend outside. Shorten, reflow, or split overloaded content; never shrink the complete artwork.

BRAND COLOR PALETTE (premium dark):
- Background #041C3F → #343F52 gradient (full frame). Gold accent #FAB758 (lines, bullets, badge). Silver text #E5F4FD (headlines). Blue accent #5EB9F0 at 30% (subtle glow). Body #9499A3. CTA #FAB758 bg with #041C3F text.

Style: luxury dark premium, exclusive, sophisticated and authoritative.

Layout (vertical):
- Small #FAB758 label "KHÓA HỌC CHUYÊN SÂU".
- Large headline "[KHÓA HỌC]" in elegant thin #E5F4FD sans-serif, letterspaced.
- Thin #FAB758 rule (50% width).
- Subtitle "Chương trình đào tạo chuyên nghiệp" in #9499A3.
- 3 verified premium features with #FAB758 bullet dots: `[LỢI ÍCH 1]` · `[LỢI ÍCH 2]` · `[LỢI ÍCH 3]`; omit any unverified claim.
- Center-lower: floating premium 3D render of a course object (laptop, certificate, software icon) with dramatic lighting, #5EB9F0 subtle glow, glossy reflection.
- CTA: elegant #FAB758 button with #041C3F text "[CTA]" (vd "TƯ VẤN NGAY").
- Footer (inside bottom of safe zone): "[CHI NHÁNH]" in thin #FAB758, centered.

Subtle 2% noise texture. Minimal but impactful.
Avoid: bright colors, playful elements, cheap gradients, cartoon icons, text near edges.
All Vietnamese text must be rendered with full, correct Vietnamese diacritics. Do NOT omit, simplify, romanize, or alter any diacritical marks.
```

---

## PROMPT 14: Flat Illustration — Minh Họa Phẳng

> Phù hợp: Social media thân thiện — mọi khóa học.

```
Design a flat illustration vertical education image (1080×1920px, 9:16 ratio).

COURSE: [KHÓA HỌC]
BRAND: [CHI NHÁNH]

SAFE ZONE (critical): illustration (upper-middle) + text block (lower-middle) inside the center safe zone (Y 280–1580px, X 120–920px), centered. Top area and bottom area empty for TikTok UI.
HARD SAFE-ZONE LOCK — NON-NEGOTIABLE: Every readable word and meaningful element must fit completely inside X=120..920 and Y=280..1580. OPTICAL CENTER LOCK: center the primary headline and content modules on canvas axis X=540; use X=160..920 as the default primary column and keep the visual-weight centroid within X=520..560, excluding page number and background decoration. Headline Y=420..610; main content Y=640..1500; CTA Y=1390..1500; footer Y=1530..1580; page number X=790..900 and Y=290..350. Keep all text and important content out of X=0..89, X=931..1079, Y=0..249, and Y=1641..1919. Background decoration only may extend outside. Shorten, reflow, or split overloaded content; never shrink the complete artwork.

BRAND COLOR PALETTE (strict):
- Background #F0F8FE. Primary shapes #5EB9F0. Dark shapes #343F52. Accent #FAB758. Supporting teal #177B82. Light fills #E5F4FD.

Style: modern flat vector illustration, Slack/Notion/Figma brand style, geometric, clean and friendly.

Layout (vertical):
- Center illustration: abstract geometric figures at workspaces using course-relevant tools; 2–3 abstract blob-style figures (#343F52 / #5EB9F0, no realistic faces) collaborating; floating #FAB758 elements (progress indicators, checkmarks, lightbulbs, stars).
- Text block below: "[KHÓA HỌC]" bold #343F52; "Thực hành ngay — Ứng dụng liền" in #60697B.
- Footer (inside bottom of safe zone): "[CHI NHÁNH]" in #5EB9F0.

No outlines, filled shapes only, rounded corners, flat color-block shadows.
Avoid: realistic photos, 3D renders, gradients, complex patterns, detailed faces, text near edges.
All Vietnamese text must be rendered with full, correct Vietnamese diacritics. Do NOT omit, simplify, romanize, or alter any diacritical marks.
```

---

## PROMPT 15: Creative Hook — Hoài Cổ / Khai Giảng

> Phù hợp: Cover sự kiện khai giảng, back-to-school, seasonal.

```
Create a modern creative vertical education image (1080×1920px, 9:16 ratio).

COURSE: [KHÓA HỌC]
BRAND: [CHI NHÁNH]

SAFE ZONE (critical): hook text + comparison scene stacked vertically inside the center safe zone (Y 280–1580px, X 120–920px), centered. Top area and bottom area empty for TikTok UI.
HARD SAFE-ZONE LOCK — NON-NEGOTIABLE: Every readable word and meaningful element must fit completely inside X=120..920 and Y=280..1580. OPTICAL CENTER LOCK: center the primary headline and content modules on canvas axis X=540; use X=160..920 as the default primary column and keep the visual-weight centroid within X=520..560, excluding page number and background decoration. Headline Y=420..610; main content Y=640..1500; CTA Y=1390..1500; footer Y=1530..1580; page number X=790..900 and Y=290..350. Keep all text and important content out of X=0..89, X=931..1079, Y=0..249, and Y=1641..1919. Background decoration only may extend outside. Shorten, reflow, or split overloaded content; never shrink the complete artwork.

Style: modern creative social media advertising, realistic Canva poster design, premium typography, clean educational layout.
Color palette: bright trendy professional — vibrant gradient (warm + cyan + orange accents), high readability. Keep on-brand: lean on #5EB9F0, #FAB758, #343F52 where possible.

Scene (center): realistic before-vs-after learning/workflow comparison related to [KHÓA HỌC] — abstract non-readable panels, project mockups and educational creative elements. Use a real screenshot instead if exact software UI is needed.

Text (ONLY uppercase Vietnamese, stacked, centered):
- "[AUTO GENERATE MAIN HOOK]"
- "[AUTO GENERATE MAIN PROBLEM / COURSE VALUE]"
- "[AUTO GENERATE SHORT SUPPORTING TEXT]"
Footer (inside bottom of safe zone): "[CHI NHÁNH]".

Requirements: realistic creative advertising, clean vertical layout, highly readable typography, less AI-generated look.
Avoid: clutter, too many icons, messy layout, watermark, QR code, hotline, address, cyberpunk, human faces, text near edges.
All Vietnamese text must be rendered with full, correct Vietnamese diacritics. Do NOT omit, simplify, romanize, or alter any diacritical marks.
```

---

## PROMPT 16: Gradient Mesh — Lưới Gradient Hiện Đại

> Phù hợp: Cover premium tông hiện đại Apple/Stripe.

```
Design a modern gradient-mesh vertical education image (1080×1920px, 9:16 ratio).

COURSE: [KHÓA HỌC]
BRAND: [CHI NHÁNH]

SAFE ZONE (critical): all content centered inside the safe zone (Y 280–1580px, X 120–920px). Top area and bottom area empty for TikTok UI. No text near edges.
HARD SAFE-ZONE LOCK — NON-NEGOTIABLE: Every readable word and meaningful element must fit completely inside X=120..920 and Y=280..1580. OPTICAL CENTER LOCK: center the primary headline and content modules on canvas axis X=540; use X=160..920 as the default primary column and keep the visual-weight centroid within X=520..560, excluding page number and background decoration. Headline Y=420..610; main content Y=640..1500; CTA Y=1390..1500; footer Y=1530..1580; page number X=790..900 and Y=290..350. Keep all text and important content out of X=0..89, X=931..1079, Y=0..249, and Y=1641..1919. Background decoration only may extend outside. Shorten, reflow, or split overloaded content; never shrink the complete artwork.

BRAND COLOR PALETTE (gradient mesh):
- Background fluid gradient mesh #5EB9F0 → #0077C8 → #343F52 (full frame) with a subtle warm #FAB758 accent zone. Soft organic transitions.
- Text #FFFFFF (bold, with subtle text-shadow). Glass pills rgba(255,255,255,0.2) frosted.

Style: contemporary gradient mesh, Apple/Stripe aesthetic, fluid colorful background, clean white typography.

Content (centered, vertical):
- "[KHÓA HỌC]" large bold #FFFFFF with subtle text-shadow.
- `[SUBHEADLINE ĐÃ XÁC NHẬN]` semi-bold #FFFFFF.
- Up to 4 verified frosted glass feature tags: `[LỢI ÍCH 1]` · `[LỢI ÍCH 2]` · `[LỢI ÍCH 3]` · `[LỢI ÍCH 4]`.
- Frosted glass CTA button "[CTA]" (vd "KHÁM PHÁ NGAY") bold #FFFFFF with glowing border.
- Footer (inside bottom of safe zone): "[CHI NHÁNH]" in slightly transparent #FFFFFF.
- 3–4 subtle frosted glass geometric shapes floating; tiny grain overlay (1%).

Avoid: flat colors, sharp edges, photos, complex illustrations, text near edges.
All Vietnamese text must be rendered with full, correct Vietnamese diacritics. Do NOT omit, simplify, romanize, or alter any diacritical marks.
```

---

## PROMPT 17: Promo Multi-Info — Khai Giảng / Ưu Đãi

> Phù hợp: Slide nhiều thông tin (ưu đãi, hạn ĐK, lịch thi, cam kết).

```
Design a vibrant promotional education image (1080×1920px, 9:16 ratio) for an opening class / promotion.

COURSE: [KHÓA HỌC]
BRAND: [CHI NHÁNH]

SAFE ZONE (critical): title + promo sticker + info boxes + benefits stacked vertically inside the center safe zone (Y 280–1580px, X 120–920px). Top area and bottom area stay clear for TikTok UI.
HARD SAFE-ZONE LOCK — NON-NEGOTIABLE: Every readable word and meaningful element must fit completely inside X=120..920 and Y=280..1580. OPTICAL CENTER LOCK: center the primary headline and content modules on canvas axis X=540; use X=160..920 as the default primary column and keep the visual-weight centroid within X=520..560, excluding page number and background decoration. Headline Y=420..610; main content Y=640..1500; CTA Y=1390..1500; footer Y=1530..1580; page number X=790..900 and Y=290..350. Keep all text and important content out of X=0..89, X=931..1079, Y=0..249, and Y=1641..1919. Background decoration only may extend outside. Shorten, reflow, or split overloaded content; never shrink the complete artwork.

PLACEHOLDERS: [TIÊU ĐỀ CHÍNH] · [NỘI DUNG PHỤ] · [ƯU ĐÃI] · [HẠN ĐĂNG KÝ] · [NGÀY THI 1] · [NGÀY THI 2] · [NỘI DUNG CTA] · [HOTLINE đặt trong CTA nếu cần] · [HASHTAG] · [ƯU ĐIỂM 1..5]

BRAND COLOR PALETTE (on-brand, NO purple):
- Background #F0F8FE → #E5F4FD soft gradient. Primary #5EB9F0. Deep blue #0077C8. Accent gold #FAB758. Promotion red #FF2B2B (only for sale sticker). Dark navy #343F52. White #FFFFFF.

Style: modern Facebook/TikTok education ads, high-conversion, dynamic infographic, bold typography hierarchy, 3D educational icons, premium but friendly, mobile-optimized.

Layout (vertical, centered):
- Headline "[TIÊU ĐỀ CHÍNH]" heavy bold, white text with #343F52 outline, key words in #FAB758 gradient, premium glow.
- Top-right dynamic sticker "[ƯU ĐÃI]" — energetic burst shape (red/gold), strong shadow.
- "[NỘI DUNG PHỤ]" inside a rounded #0077C8 info box, centered.
- Deadline banner "[HẠN ĐĂNG KÝ]" — gold/blue countdown style.
- Two rounded white date cards "[NGÀY THI 1]" · "[NGÀY THI 2]" (bold red/navy date typography, calendar-inspired).
- Benefit boxes (white rounded, 3D icons): ✔ [ƯU ĐIỂM 1..5].
- CTA strip "[NỘI DUNG CTA]" — deep blue gradient rounded card, white bold text.
- Footer (inside bottom of safe zone): "[CHI NHÁNH]" + small "[HASHTAG]".

Background: soft lighting, abstract geometric shapes, floating confetti, 3D icons (megaphone, certificate, laptop, graduation cap, calendar, trophy).
Avoid: realistic photography, dark/moody themes, overly complex composition, tiny unreadable text, off-brand colors, clutter, text near edges.
All Vietnamese text must be rendered with full, correct Vietnamese diacritics. Do NOT omit, simplify, romanize, or alter any diacritical marks.
```

---

## PROMPT 18: Workspace Productivity — Banner Tổng Quát

> Phù hợp: Cover khóa học tổng quát — workspace + before/after năng suất.

```
Create a modern high-conversion vertical educational image (1080×1920px, 9:16 ratio).

COURSE: [KHÓA HỌC]
BRAND: [CHI NHÁNH]

SAFE ZONE (critical): headline + subheadline + workspace scene stacked vertically inside the center safe zone (Y 280–1580px, X 120–920px), centered. Top area and bottom area empty for TikTok UI.
HARD SAFE-ZONE LOCK — NON-NEGOTIABLE: Every readable word and meaningful element must fit completely inside X=120..920 and Y=280..1580. OPTICAL CENTER LOCK: center the primary headline and content modules on canvas axis X=540; use X=160..920 as the default primary column and keep the visual-weight centroid within X=520..560, excluding page number and background decoration. Headline Y=420..610; main content Y=640..1500; CTA Y=1390..1500; footer Y=1530..1580; page number X=790..900 and Y=290..350. Keep all text and important content out of X=0..89, X=931..1079, Y=0..249, and Y=1641..1919. Background decoration only may extend outside. Shorten, reflow, or split overloaded content; never shrink the complete artwork.

Style: modern educational social media advertising, realistic Canva-style, clean layout, premium typography, professional training-center marketing.
Color palette: vibrant gradient blue with cyan and orange accents — bright, clean, professional. Keep on-brand: #5EB9F0, #0077C8, #FAB758, #343F52 on #F0F8FE.

Scene (center): realistic workspace and learning environment related to [KHÓA HỌC] — abstract non-readable productivity panels, workflow shapes, charts/documents and a clear before-vs-after comparison. Use a real screenshot instead if exact software UI is needed.

Text (ONLY uppercase Vietnamese, stacked, centered):
- "[AUTO GENERATE MAIN COURSE TITLE]"
- "[AUTO GENERATE MAIN BENEFIT LINE]"
- "[AUTO GENERATE COURSE KEYWORDS]"
Footer (inside bottom of safe zone): "[CHI NHÁNH]".

Requirements: strong contrast, premium typography, highly readable vertical layout, realistic Canva-style, less AI-generated look.
Avoid: clutter, watermark, QR code, hotline, address, futuristic AI/cyberpunk effects, messy layout, text near edges.
All Vietnamese text must be rendered with full, correct Vietnamese diacritics. Do NOT omit, simplify, romanize, or alter any diacritical marks.
```

---

## PROMPT 19: Corporate Professional — Đào Tạo Doanh Nghiệp

> Phù hợp: B2B, đào tạo doanh nghiệp, slide cover chuyên nghiệp.

```
Design a corporate professional vertical training image (1080×1920px, 9:16 ratio).

COURSE: [KHÓA HỌC]
BRAND: [CHI NHÁNH]

SAFE ZONE (critical): dark headline block (upper-middle) + benefits + abstract graphic (lower-middle) inside the center safe zone (Y 280–1580px, X 120–920px), centered. Top area and bottom area empty for TikTok UI.
HARD SAFE-ZONE LOCK — NON-NEGOTIABLE: Every readable word and meaningful element must fit completely inside X=120..920 and Y=280..1580. OPTICAL CENTER LOCK: center the primary headline and content modules on canvas axis X=540; use X=160..920 as the default primary column and keep the visual-weight centroid within X=520..560, excluding page number and background decoration. Headline Y=420..610; main content Y=640..1500; CTA Y=1390..1500; footer Y=1530..1580; page number X=790..900 and Y=290..350. Keep all text and important content out of X=0..89, X=931..1079, Y=0..249, and Y=1641..1919. Background decoration only may extend outside. Shorten, reflow, or split overloaded content; never shrink the complete artwork.

BRAND COLOR PALETTE (corporate):
- Upper block on #343F52 background. Text #FFFFFF. Accent line #FAB758. Secondary #5EB9F0. Lower section on #F0F8FE. Body #60697B. CTA #0077C8.

Style: corporate professional, B2B enterprise training, McKinsey/Deloitte presentation quality.

Layout (vertical):
- Upper (#343F52 zone): small #FAB758 label "CHƯƠNG TRÌNH ĐÀO TẠO DOANH NGHIỆP"; large headline "[KHÓA HỌC]" bold #FFFFFF; thin #FAB758 underline (30% width); description in #9499A3 "Nâng cao năng lực đội ngũ — Tối ưu hiệu suất công việc".
- 4 benefit items with #5EB9F0 icons + #E5F4FD labels: "Đào tạo tại công ty" · "Giáo trình theo yêu cầu" · "Chứng chỉ hoàn thành" · "Báo cáo kết quả".
- Lower (#F0F8FE zone): abstract geometric composition — overlapping rectangles in #5EB9F0, #343F52, #FAB758 at various opacities.
- Footer bar (inside bottom of safe zone): #0077C8 strip "[CHI NHÁNH]" + "[CTA]" (vd "LIÊN HỆ TƯ VẤN") in #FAB758 bold, white text.

Strict 8px grid alignment. Professional restraint.
Avoid: playful elements, bright noisy colors, illustrations, casual fonts, stock photos, text near edges.
All Vietnamese text must be rendered with full, correct Vietnamese diacritics. Do NOT omit, simplify, romanize, or alter any diacritical marks.
```



