---
name: design-image-saoviet
description: "Tạo và nghiệm thu bộ prompt, ảnh quảng cáo Facebook/Zalo, cùng bài đăng cho hệ thống Sao Việt: Tin Học, AutoCAD, Kế Toán và Thiết Kế Đồ Họa Sao Việt. Use for Sao Việt course campaigns requiring Vietnamese spelling/diacritics QA, diverse layouts, logo-safe composition, rendered PNG ads, and the real bundled logo from `assets/logo-sao-viet.png` (or a project-root override)."
---
# Design Image SaoViet — Tin học, AutoCAD, Kế toán, Đồ họa Sao Việt

<!-- vn-diacritics-rule -->
> ⚠️ **3 QUY TẮC BẮT BUỘC KHI XUẤT BẢN THIẾT KẾ SAO VIỆT (CẬP NHẬT MỚI NHẤT):**
> 1. **LOGO SAO VIỆT PHẢI ĐỦ TO (WidthRatio 0.14 - 0.16):** Logo thật phải đủ lớn để đọc rõ nét dòng chữ slogan thương hiệu phụ bên dưới ngôi sao: *"Chuyên nghiệp - Tận tâm - Học thành nghề"*. Tuyệt đối không thu logo quá nhỏ làm nhòe chữ slogan.
> 2. **KIỂM DUYỆT CHÍNH TẢ 2 VÒNG NGHIÊM NGẶT:**
>    - *Vòng 1 (Trước khi tạo ảnh):* Rà soát kỹ từng câu từ trong `promptimage.md`, đảm bảo chuẩn 100% ngữ pháp, dấu tiếng Việt (thanh + mũ/móc) và viết hoa đúng vị trí.
>    - *Vòng 2 (Sau khi render ảnh):* Đối chiếu trực quan từng dòng chữ trên ảnh với văn bản chuẩn. Nếu có chữ rớt dấu, sai dấu, chữ méo, hoặc vệt chữ lạ do AI tự sinh -> BẮT BUỘC xử lý hậu kỳ làm sạch hoặc render lại trước khi nghiệm thu.
> 3. **TRIỆT TIÊU LỖI CHỮ "LOGO" BỊ VẼ NGẦM TRONG ẢNH:**
>    - Trong prompt cấm tuyệt đối AI viết chữ *"LOGO"*, *"BRAND"*, hoặc bất kỳ ký tự nào tại góc chừa trống.
>    - Trong quy trình dán logo, script `apply-logo.ps1` phải tự động dọn sạch nền (clean patch) khu vực chèn logo theo màu nền xung quanh để xóa sạch vệt chữ "LOGO" do AI vẽ ngầm, sau đó mới dán đè logo thật lên.

> - Mỗi prompt gửi cho ChatGPT image_gen (Imagen 2.0) PHẢI chứa câu: *"All Vietnamese text must be rendered with full, correct Vietnamese diacritics (dấu thanh + dấu mũ/móc). Do NOT omit, simplify, romanize, or alter any diacritical marks. CRITICAL: Do NOT write, render, or watermark the text 'LOGO', 'BRAND', or any letters in the negative space corner; keep it completely clean background."*
> - Liệt kê NGUYÊN VĂN (đã có dấu) từng dòng chữ cần hiển thị để model chép đúng — không để model tự diễn giải hay rút gọn dấu.
> - Sau khi tạo ảnh: kiểm tra lại từng chữ trên đủ 4 ảnh ở kích thước dễ đọc; nếu có chữ rớt dấu/sai dấu, chữ vô nghĩa, ký tự lỗi hoặc khác nội dung đã duyệt → render lại ảnh đó. KHÔNG báo hoàn tất khi còn bất kỳ lỗi chữ nào.

Tạo bộ nội dung Facebook marketing hoàn chỉnh cho 4 page Sao Việt. Output gồm: prompt tạo hình ảnh (cho AI image generation) + bài đăng Facebook cho từng page.

## Diversity Anti-Duplication Override (BẮT BUỘC)
## Facebook Post Plain Text Rule (BẮT BUỘC)

`Baidang.md` là nội dung để copy đăng trực tiếp lên Facebook/Zalo, nên phần bài viết PHẢI là plain text.

- KHÔNG dùng Markdown bold/italic trong bài đăng: không viết `**từ khóa**`, `__từ khóa__`, `*từ khóa*`, `_từ khóa_`.
- KHÔNG dùng heading Markdown trong phần bài viết đăng Facebook: không viết `#`, `##`, `###` trước tiêu đề bài.
- KHÔNG đặt bài viết trong code fence ``` hoặc blockquote Markdown.
- Được dùng emoji, gạch đầu dòng, số thứ tự, khoảng trắng và hashtag vì Facebook hiển thị đúng các ký tự này.
- Trước khi hoàn tất, bắt buộc quét `Baidang.md`; nếu còn bất kỳ cặp `**` nào trong phần bài viết/caption thì xóa hết dấu `**`, giữ lại chữ bên trong.

## Page-Level Randomization Override (2026-07-09)

Apply this override before choosing image prompts, layouts, hooks, captions, post formats, or slide styles. The goal is to stop the pattern where one page/branch/channel keeps receiving the same visual style or post skeleton across days.

1. Treat each page/branch/channel as a rotating slot, not as a fixed style persona. Do not let a page always be roadmap, checklist, before-after, typography, testimonial, photo/workspace, corporate, or quiz. Regional/page context may guide examples and footer only; it must not lock the design or post type.
2. Before writing outputs, build a `Rotation Matrix` with: page/branch/channel -> last used visual group -> last used layout -> last used post/content type -> today's candidate visual group -> today's candidate layout -> today's candidate post/content type -> reason it is different. Put this matrix near the top of `promptimage.md` and the relevant post/caption file.
3. Select today's candidates by exclusion first: reject any visual group, layout family, hook structure, or post skeleton used by the same page in the latest available batch. If history is unavailable, still distribute all pages across different visual groups and post types.
4. A page may reuse the same course/category, brand colors, footer, logo rule, and local address rules, but it must rotate at least 4 of these 6 items: visual group, layout family, image format/aspect emphasis, headline structure, post format, CTA style.
5. Do not use page order as the template order. Shuffle or deliberately remap prompt template numbers every batch. If Page 1 used Prompt 3 last time, Page 1 should not default to Prompt 3 or the same layout family today.
6. When a project has multiple pages in one batch, no two pages should share the same main layout family unless the user explicitly asks for a unified campaign. Layout families include: left-right split, top-bottom split, 2x2 grid, central card, timeline/roadmap, before-after, full-bleed photo/workspace, isometric scene, editorial magazine, bold typography, testimonial/chat grid, checklist/quiz card, dashboard/glassmorphism.
7. For posts/captions, no two pages in one batch should share the same opening skeleton. Rotate among: direct enrollment ad, mini case, checklist, quick tip, mistake list, FAQ/Q&A, quiz, roadmap, comparison, story/POV, objection handling, result showcase.
8. Final self-check: if the set feels like one master template cloned with different footer/page names, stop and rewrite/rerender the weakest items before reporting completion.

### Hard Enforcement: No Page Persona Lock

- A page/branch/channel must not be treated as having a permanent favorite format. Never decide that "Page A is always roadmap", "Page B is always checklist", or "Page C is always quiz/testimonial".
- Before selecting today's format, explicitly exclude the latest visual group, layout family, post skeleton, opening hook type, CTA style, and headline structure used by the same page in the latest available batch.
- If the same page has used a format in any of the last 2 available batches, do not use that format today unless the user explicitly asks for it.
- At least 3 post/content types must rotate across every 3 consecutive batches for the same page when the skill supports that many types.
- The final output must include a short `Rejected repeats` note for each page listing what was rejected from recent history and what was chosen instead.
- Do not satisfy diversity only by changing colors, icon sets, examples, or footer names. Diversity must be visible in the actual layout and readable in the post structure.

Áp dụng phần này trước mọi quy tắc random hóa khác. Mục tiêu là tránh lỗi "mỗi page nhìn như cùng một mẫu, chỉ đổi footer" hoặc "page này nhiều ngày liên tiếp đăng cùng một dạng bài".

1. Trước khi viết `promptimage.md` và `Baidang.md`, rà ít nhất 3-5 folder ngày gần nhất của project root nếu có. Ghi nhanh trong file output bảng `Audit gần đây` gồm: ngày → page → khóa → dạng bài → nhóm visual → layout chính → hook. Nếu không tìm thấy dữ liệu cũ thì ghi rõ "không có dữ liệu gần đây".
2. Mỗi page trong cùng ngày PHẢI khác nhau tối thiểu 6/8 trục: khóa/ngành, dạng bài, hook mở đầu, thứ tự luận điểm, CTA, prompt template, nhóm visual, bố cục ảnh. Không chấp nhận cùng một skeleton rồi thay tên page/footer.
3. Không gán cố định một page với một kiểu mãi mãi. Nếu page đó ở lần gần nhất đã dùng cùng dạng bài hoặc cùng nhóm visual, hôm nay phải đổi.
4. "Đồng bộ bộ nhận diện" chỉ có nghĩa là đồng bộ palette, footer, font mood và chất lượng. Không đồng bộ layout, không đồng bộ hook, không đồng bộ cấu trúc bài.
5. Trong `promptimage.md` bắt buộc có bảng `Ma trận đa dạng ảnh`: page → khóa → prompt # → nhóm visual → bố cục → format → hook ảnh → điểm khác với lần gần nhất.
6. Trong `Baidang.md` bắt buộc có bảng `Ma trận đa dạng bài viết`: page → khóa → dạng bài → hook → ví dụ ngành → CTA → điểm khác với lần gần nhất.
7. Sau khi render ảnh, phải xem/so sánh thumbnail toàn bộ ảnh cuối. Nếu 2 ảnh có cùng bố cục chính (cùng split trái/phải, cùng vị trí headline, cùng kiểu card, cùng footer bar, cùng visual placement) thì rerender ít nhất 1 ảnh trước khi báo hoàn tất.
8. Không báo hoàn tất nếu bộ ảnh/bài vẫn cho cảm giác "một mẫu nhân bản". Phải sửa prompt hoặc bài viết ngay trong lượt đó.

## 4 Pages + khối khoá học của mỗi page
| # | Page | Khối khoá được đăng | Brand Footer (chỉ tên) |
|---|------|--------------------|------------------------|
| 1 | Trung Tâm Tin Học Sao Việt | **PAGE TỔNG — đăng được TẤT CẢ khoá** trong danh mục A-F, linh động theo ngày/chủ đề/user brief; KHÔNG khóa cố định vào một nhóm ưu tiên | TRUNG TÂM TIN HỌC SAO VIỆT |
| 2 | Trung Tâm Đào Tạo AutoCAD Sao Việt | Vẽ kỹ thuật / CAD / 3D: AutoCAD 2D, AutoCAD 3D, SolidWorks, SketchUp, 3Ds Max + Vray, Thiết kế nội thất | TRUNG TÂM ĐÀO TẠO AUTOCAD SAO VIỆT |
| 3 | Trung Tâm Đào Tạo Kế Toán Sao Việt | Kế toán: Kế toán thực hành | TRUNG TÂM ĐÀO TẠO KẾ TOÁN SAO VIỆT |
| 4 | Trung Tâm Thiết Kế Đồ Họa Sao Việt | Thiết kế đồ họa: Photoshop, Illustrator, CorelDraw | TRUNG TÂM THIẾT KẾ ĐỒ HỌA SAO VIỆT |

> Danh mục khoá học đầy đủ + bảng ánh xạ khoá → page nằm trong `references/brand-info.md`. LUÔN bám danh mục đó, không bịa tên khoá.

## Workflow
### Step 1 — Chọn khoá học cho từng page (chia khối ngày phù hợp)
Mục tiêu: mỗi page đăng **đúng khoá thuộc khối chuyên môn của page** (xem bảng trên + `brand-info.md`).
- **Page tổng (Tin Học Sao Việt):** được đăng BẤT KỲ khoá nào trong danh mục A-F. Chọn linh động theo user brief, lịch nội dung và dữ liệu gần đây; luân phiên toàn bộ danh mục để không bị kẹt ở một nhóm khoá.
- **Page chuyên môn (AutoCAD / Kế Toán / Đồ Họa):** chỉ chọn khoá thuộc khối của page đó.
- Nếu user nêu **một khoá cụ thể:** áp dụng cho page chuyên môn phù hợp; page tổng cũng có thể dùng khoá đó; các page còn lại lấy khoá flagship của khối mình.
- Nếu user nói chung chung ("tạo bài hôm nay", "khai giảng khoá mới"...): tự **chia khối ngày** — mỗi page lấy 1 khoá phù hợp khối của page, page tổng luân phiên 1 khoá bất kỳ.
- Chỉ dùng AskUserQuestion khi không thể suy luận an toàn.

### Step 2 — Load references
1. **Luôn load:** `references/brand-info.md` — thông tin brand, logo, contact, 4 page, **danh mục khoá học + ánh xạ khoá→page**, địa chỉ cơ sở
2. **Luôn load:** `references/prompt-templates.md` — 19 prompt mẫu tạo ảnh
3. **Luôn load:** `references/post-templates.md` — cấu trúc bài đăng mẫu
4. **Luôn load:** `references/footer-rules.md` — quy tắc footer

### Step 3 — Tạo 4 prompt hình ảnh
Mỗi page dùng 1 prompt template KHÁC NHAU từ 19 prompt mẫu:
| Page | Prompt # | Style |
|------|----------|-------|
| Tin Học Sao Việt | Random từ 1-19 | Khác nhau |
| AutoCAD Sao Việt | Random từ 1-19 | Khác nhau |
| Kế Toán Sao Việt | Random từ 1-19 | Khác nhau |
| Đồ Họa Sao Việt | Random từ 1-19 | Khác nhau |

**Random hóa thiết kế BẮT BUỘC (không chỉ đổi footer):**
- Trước khi viết `promptimage.md`, lập nhanh bảng `page → khóa → prompt # → nhóm visual → format ảnh → hook ảnh`. 4 page PHẢI khác nhau ở prompt template, nhóm visual và hook chữ.
- Không dùng cùng một nhóm visual quá 1 page trong cùng ngày, trừ khi user chỉ định. Nhóm visual gồm: timeline/roadmap, before-after, bold typography, photo/workspace, isometric/3D, glassmorphism/AI UI, editorial/corporate, feedback/testimonial, flat illustration, quiz/checklist.
- Vì các page thuộc khối chuyên môn khác nhau, visual phải bám ngành: Tin học dùng office/dashboard; AutoCAD dùng bản vẽ/kỹ thuật; Kế toán dùng sổ sách/bảng số liệu; Đồ họa dùng workspace thiết kế/sản phẩm. Không tạo 4 ảnh cùng layout chỉ đổi tên khóa.
**Mỗi prompt PHẢI:**
- Thay [REPLACE_COURSE_NAME] bằng tên khoá học thực tế (đúng khối của page)
- Thay [REPLACE_BRAND] bằng tên brand footer của page. Nếu user chọn/nhắc chi nhánh/local, PHẢI dùng tên brand gắn local theo `references/brand-info.md`, ví dụ Thuận An: `TRUNG TÂM TIN HỌC SAO VIỆT THUẬN AN`, `TRUNG TÂM ĐÀO TẠO AUTOCAD SAO VIỆT THUẬN AN`
- Footer CHỈ HIỆN TÊN BRAND — không hiện địa chỉ, hotline, email
- Visual/icons/phần mềm auto-adapt theo khoá: AutoCAD/SolidWorks/SketchUp/3Ds Max → bản vẽ kỹ thuật, mô hình 3D, giao diện CAD; Kế toán → bảng tính, chứng từ, phần mềm kế toán; Đồ hoạ → Photoshop/Illustrator/CorelDraw, layout thiết kế; Tin học/AI → Office, giao diện AI, văn phòng
- **PHẢI có logo Sao Việt thật ở ảnh cuối**: prompt KHÔNG để model tự vẽ/nhái logo và KHÔNG tạo khung chừa logo. Logo thật mặc định lấy từ `assets/logo-sao-viet.png` trong skill. Nếu project root có logo riêng thì có thể dùng làm override. Bố cục có khoảng âm tự nhiên ở góc/header để Step 6 chèn logo local bằng `scripts/apply-logo.ps1`.
- 4 page phải dùng 4 prompt khác nhau

### Step 4 — Tạo 4 bài đăng Facebook
Mỗi bài đăng cho 1 page, theo cấu trúc trong `references/post-templates.md`.

**Random hóa bài viết BẮT BUỘC:**
- Trước khi viết `Baidang.md`, lập bảng `page → dạng bài → hook → angle ngành → CTA`. 4 bài PHẢI khác dạng hoặc khác cấu trúc rõ rệt.
- Dạng bài gợi ý: khóa học/tuyển sinh, mẹo nhanh, checklist tự đánh giá, quiz/tương tác, lộ trình học, lỗi thường gặp, tình huống nghề nghiệp, mini case trước-sau, FAQ.
- Không viết cùng skeleton rồi thay tên khóa/page. Mỗi bài phải khác hook mở đầu, thứ tự nội dung, ví dụ ngành, CTA và hashtag phụ.
**Mỗi bài đăng PHẢI:**
- Adapt nội dung theo khoá học của page + đặc thù học viên Sao Việt: dân văn phòng, nhân viên KCN/nhà máy, doanh nghiệp nhỏ, sinh viên, người đi làm, kỹ thuật, kế toán, marketing, thiết kế
- Không bịa học phí, lịch khai giảng, ưu đãi, tỷ lệ kết quả, chứng chỉ được cấp, cam kết việc làm, tên học viên hoặc lời chứng thực. Chỉ dùng dữ kiện do user/project cung cấp; nếu thiếu thì viết lợi ích định tính và CTA liên hệ để được tư vấn.
- Footer bài đăng gồm: tên brand gắn local nếu user chọn/nhắc chi nhánh + địa chỉ chi nhánh nếu user chọn/nhắc chi nhánh + hotline + email + hashtag
- Khi user chọn/nhắc local/chi nhánh, PHẢI đổi `[TÊN BRAND]` thành brand gắn local theo công thức trong `references/brand-info.md`; không dùng brand tổng chung nếu đã biết local
- Khi user muốn sử dụng một chi nhánh cụ thể, PHẢI lấy đúng địa chỉ trong `references/brand-info.md` và thêm dòng `🏫 Địa chỉ: [địa chỉ chi nhánh]` ở cuối bài đăng, ngay sau tên brand và trước hotline/email
- Nếu user không chọn chi nhánh, không tự liệt kê toàn bộ địa chỉ; chỉ dùng địa chỉ khi brief cần bối cảnh địa phương hoặc hỏi lại khi việc chọn chi nhánh là quan trọng
- Giọng văn chuyên nghiệp, thực tế, không quá quảng cáo
- Dùng Markdown chỉ để tổ chức file (tiêu đề và dấu phân cách); riêng nội dung caption để copy phải là plain text
- Phần nội dung bài đăng để copy sang Facebook/Zalo phải là plain text: KHÔNG dùng Markdown bôi đậm/nghiêng; tuyệt đối không có dấu `**`, `__`, `*...*` hay `_..._` trong nội dung copy. Có thể dùng chữ HOA, emoji, xuống dòng và bullet thường.

### Step 5 — Lưu file
Tạo folder theo ngày (DD-MM-YYYY) bên trong folder gốc của dự án:
```
[ngày]/
├── promptimage.md     — 4 prompt tạo ảnh
├── Baidang.md         — 4 bài đăng Facebook
└── Images/            — folder chứa hình (tạo rỗng)
```
**QUAN TRỌNG:** Folder ngày của skill này nằm trực tiếp trong project root, ví dụ `10-06-2026/`. Folder `Images/` CHỈ nằm BÊN TRONG folder ngày. Không tạo `Images/` rời rạc ở root dự án.

### Step 6 — Tạo ảnh cuối cùng + gắn logo thật hoàn thiện
Sau khi tạo xong promptimage.md, PHẢI tiếp tục tạo ảnh ngay trong cùng lượt làm việc bằng ChatGPT image_gen (Imagen 2.0), rồi PHẢI chèn logo thật từ file local vào ảnh cuối bằng `scripts/apply-logo.ps1`. Không dừng ở bước viết prompt.

**Nguyên tắc final-only:** trong folder ảnh cuối (`Images/`) chỉ để đúng 4 file PNG cuối cùng đã gắn logo thật. Không để nhiều bản render thử, không để ảnh chưa gắn logo, không để thư mục phụ hoặc bản nháp trong folder ảnh cuối. Nếu cần giữ bản trung gian, dùng `C:\tmp` hoặc thư mục tạm ngoài folder ảnh cuối, rồi chỉ copy/ghi file cuối cùng vào folder ảnh cuối.

**Quy trình bắt buộc:**
1. **Logo dùng chung:** mặc định dùng logo thật có sẵn trong skill tại `assets/logo-sao-viet.png`. Nếu project root có logo riêng (`Logo màu sao việt-02.png`, `logo-saoviet.png`, `logo-sao-viet.png`, `logo.png`) thì ưu tiên logo trong project root để override; nếu không có thì dùng logo bundled, không hỏi lại.
   - [SKILL_DIR] là đường dẫn tuyệt đối tới folder skill design-image-saoviet; khi chạy thực tế phải thay bằng folder skill đang được dùng.
2. Khi gọi image_gen, prompt phải yêu cầu thiết kế hoàn chỉnh nhưng KHÔNG được tự vẽ/tạo/nhái logo. Không dùng câu chữ khiến model hiểu cần vẽ khung, ô giữ chỗ, viền nét đứt, nhãn logo, hoặc vùng đánh dấu riêng cho logo. Thay vào đó ghi rõ: giữ góc/header phù hợp nhất làm **negative space tự nhiên** cùng nền thiết kế, không khung, không viền, không nhãn, không ô đánh dấu. Ảnh cuối phải trông như logo đã được thiết kế sẵn trong bố cục.
3. Gọi image_gen cho đủ 4 page/prompt.
4. Copy ảnh PNG mới sinh từ `C:\Users\user\.codex\generated_images\...` vào folder ảnh cuối theo tên chuẩn.
5. Chạy script chèn logo thật với kích thước vừa phải. Script chỉ ghi đè thành file PNG cuối cùng đã gắn logo.

```powershell
powershell -ExecutionPolicy Bypass -File "[SKILL_DIR]\scripts\apply-logo.ps1" `
  -ImageDir "[folder ảnh cuối]" `
  -LogoPath "[SKILL_DIR]\assets\logo-sao-viet.png" `
  -ImageNames @('page-1-tinhoc.png','page-2-autocad.png','page-3-ketoan.png','page-4-dohoa.png') `
  -Position top-left `
  -WidthRatio 0.15 `
  -PaddingRatio 0.025 `
  -CleanPatch
```

Nếu 4 ảnh có khoảng trống khác nhau, tạo `logo-plan.json` trong folder ngày và truyền `-ConfigPath` để chèn linh động từng ảnh:

```json
{
  "images": [
    { "name": "page-1-tinhoc.png", "position": "top-left", "widthRatio": 0.15, "paddingRatio": 0.025, "cleanPatch": true },
    { "name": "page-2-autocad.png", "position": "top-right", "widthRatio": 0.14, "paddingRatio": 0.025, "cleanPatch": true },
    { "name": "page-3-ketoan.png", "position": "top-left", "widthRatio": 0.15, "paddingRatio": 0.025, "cleanPatch": true },
    { "name": "page-4-dohoa.png", "position": "top-right", "widthRatio": 0.15, "paddingRatio": 0.025, "cleanPatch": true }
  ]
}
```

```powershell
powershell -ExecutionPolicy Bypass -File "[SKILL_DIR]\scripts\apply-logo.ps1" `
  -ImageDir "[folder ảnh cuối]" `
  -LogoPath "[SKILL_DIR]\assets\logo-sao-viet.png" `
  -ConfigPath "[folder ngay]\logo-plan.json"
```

6. Mở/xem đủ 4 ảnh sau khi chèn ở kích thước dễ đọc để kiểm tra logo thật rõ, không bị che chữ/nhân vật/đồ họa, không có khung chừa logo, không còn logo giả/nhái do model tạo.
7. Thực hiện **Step 7 — Final QA Gate** bên dưới. Chỉ báo hoàn tất khi cả 4 ảnh và 2 file nội dung đều PASS.

### Step 7 — Final QA Gate: chính tả tiếng Việt và nghiệm thu đầu ra

Đây là bước cuối bắt buộc, thực hiện sau khi gắn logo và trước khi báo hoàn tất.

1. **Chốt bản chữ chuẩn:** lấy nguyên văn tất cả dòng chữ dự kiến hiển thị từ `promptimage.md` (headline, subheadline, nhãn, CTA, tên khóa, brand footer). Không tự suy đoán chữ từ hình.
2. **Kiểm tra file chữ:** đọc lại toàn bộ `promptimage.md` và `Baidang.md`; sửa lỗi chính tả, thiếu/sai dấu, viết hoa, tên khóa, tên brand/local, hotline, email và địa chỉ. Bảo đảm văn bản Unicode hiển thị bình thường, không có mojibake như `Ã`, `Ä`, `á»`, ký tự thay thế `�`, hoặc chữ tiếng Việt bị chuyển thành không dấu. Nội dung caption vẫn phải tuân thủ plain text. Kiểm tra thêm tính xác thực: không có số liệu, ưu đãi, lịch, cam kết, tên người hoặc testimonial chưa được nguồn đầu vào xác nhận.
3. **Kiểm tra đủ 4 ảnh:** mở từng PNG cuối ở độ phóng đại đủ đọc, đối chiếu từng dòng trên ảnh với bản chữ chuẩn. Kiểm tra cả dấu thanh, dấu mũ/móc, chữ `đ/Đ`, khoảng trắng, ký tự, số, CTA và footer. OCR chỉ là hỗ trợ; không được dùng OCR thay cho đối chiếu trực quan vì OCR có thể bỏ sót dấu.
4. **Ghi bảng nghiệm thu** vào cuối `promptimage.md`: `file ảnh | chữ dự kiến | chữ quan sát được | chính tả/dấu | logo | bố cục | kết quả`. Mỗi ảnh chỉ được ghi `PASS` khi mọi mục đều đúng; không ghi PASS theo suy đoán nếu chữ quá nhỏ hoặc không đọc được.
5. **Sửa đến khi đạt:** ảnh có một lỗi chữ, chữ giả/vô nghĩa, ký tự méo, dòng bị cắt hoặc không đọc rõ phải được render lại. Sau mỗi lần render/chèn logo, kiểm tra lại toàn bộ chữ của chính ảnh đó và cập nhật bảng nghiệm thu.
6. **Điều kiện hoàn tất:** đúng 4 PNG final-only; 4/4 ảnh PASS chính tả + logo + bố cục; `promptimage.md` và `Baidang.md` PASS nội dung; không còn placeholder chưa thay. Nếu công cụ không cho phép đọc chắc chắn chữ trên ảnh, báo rõ chưa nghiệm thu và không tuyên bố hoàn tất.

## Logo Rule (QUAN TRỌNG)
- Logo dùng chung cho mọi page mặc định nằm trong skill tại `assets/logo-sao-viet.png`. Khi project root có logo riêng (`Logo màu sao việt-02.png`, `logo-saoviet.png`, `logo-sao-viet.png`, `logo.png`) thì có thể dùng logo đó để override. Không dùng đường dẫn cố định ngoài project hoặc ngoài skill.
- **Kích thước logo:** Bắt buộc dùng `widthRatio 0.14 - 0.16` (chuẩn 0.15) để nhìn rõ dòng chữ slogan thương hiệu phụ bên dưới ngôi sao: *"Chuyên nghiệp - Tận tâm - Học thành nghề"*.
- **Chống lỗi chữ "LOGO" do AI tự vẽ ngầm:** Prompt tạo ảnh phải ghi rõ: không tự vẽ, không bắt chước, không tạo logo, và TUYỆT ĐỐI không viết chữ "LOGO" hay "BRAND" tại góc chừa trống; giữ logo-safe zone tự nhiên ở góc/header trống nhất để đặt logo thật sau. Script `apply-logo.ps1` có cơ chế tự động dọn sạch nền (CleanPatch) trước khi dán logo thật.
- Sau khi tạo ảnh, bắt buộc chạy `scripts/apply-logo.ps1` để chèn logo local vào ảnh cuối.
- Logo thật phải rõ ràng, không bị che, đủ nhận diện thương hiệu.
- KHÔNG BAO GIỜ báo hoàn tất nếu ảnh còn khung placeholder/chừa logo, vệt chữ "LOGO" ngầm, logo do model tự sinh, logo sai, hoặc folder ảnh cuối còn nhiều bản nháp.

## Quy tắc tạo ảnh & logo (BẮT BUỘC)

- **Tạo ảnh:** Mọi ảnh thiết kế cuối cùng LUÔN tạo bằng **ChatGPT image_gen (Imagen 2.0)** — công cụ tạo ảnh DUY NHẤT của skill.
- **Không tự dựng script render ảnh:** TUYỆT ĐỐI không tự viết/chạy script để render hay vẽ artwork (PIL, HTML/CSS-to-image, matplotlib, Canva-like, puppeteer/screenshot, renderer xác định...). Ảnh nền/thiết kế chỉ đến từ image_gen. **Ngoại lệ DUY NHẤT:** script chèn **logo thật** từ file local (`scripts/apply-logo.ps1`) — được phép dùng.
- **Logo:** Prompt/promptimage KHÔNG cho model tự vẽ/nhái/tái tạo logo, KHÔNG tạo khung chừa/placeholder/viền nét đứt/nhãn "logo". Giữ khoảng âm tự nhiên ở vùng logo. Logo trên ảnh cuối PHẢI là **logo thật lấy từ `assets/logo-sao-viet.png` trong skill**, hoặc logo override trong project root nếu có, chèn bằng `apply-logo.ps1`.
- **Nếu môi trường không có image_gen:** dừng sau khi viết promptimage, báo user prompt đã sẵn sàng render bằng ChatGPT image_gen (Imagen 2.0); KHÔNG fallback sang script render.

## Footer Rule (QUAN TRỌNG)
**Footer trong prompt ảnh:** CHỈ hiện tên brand (VD: "TRUNG TÂM ĐÀO TẠO AUTOCAD SAO VIỆT")
- KHÔNG hiện địa chỉ
- KHÔNG hiện hotline
- KHÔNG hiện email

**Footer trong bài đăng:** CHỈ gồm:
```
📍 [TÊN BRAND]
🏫 Địa chỉ: [ĐỊA CHỈ CHI NHÁNH nếu user chọn/nhắc chi nhánh]

📞 Hotline/Zalo: 0911 639 848
📧 Email: trungtamtinhocsaoviet@gmail.com

#hashtags
```

## Output Format
### `promptimage.md`
```markdown
# PROMPT TẠO HÌNH ẢNH
## Ngày: [DD/MM/YYYY]
---
## PAGE 1: TIN HỌC SAO VIỆT — Khoá: [tên khoá] — Prompt [#] ([style] · [size])
**[prompt content]**
---
## PAGE 2: AUTOCAD SAO VIỆT — Khoá: [tên khoá] — ...
```
### `Baidang.md`
```markdown
# BÀI ĐĂNG FACEBOOK
## Ngày: [DD/MM/YYYY]
---
## BÀI 1 — PAGE: TRUNG TÂM TIN HỌC SAO VIỆT — Khoá: [tên khoá]
[nội dung bài đăng]
---
## BÀI 2 — PAGE: ...
```
