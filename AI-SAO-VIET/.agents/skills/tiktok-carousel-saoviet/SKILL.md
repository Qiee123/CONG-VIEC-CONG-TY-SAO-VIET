---
name: tiktok-carousel-saoviet
description: "Điều phối và tạo carousel TikTok dọc 9:16 dùng chung cho nhiều kênh Sao Việt, gồm Tin học, Kế toán và Đồ họa: lập bài, viết prompt, render ảnh, lưu theo ngày và QA. Dùng khi user gọi $tiktok-carousel-saoviet, yêu cầu batch nhiều kênh/chủ đề, hoặc làm nội dung cho kênh Kế toán/Đồ họa. Với yêu cầu chỉ dành cho kênh chính Tin Học AZ, ưu tiên skill tiktok-tin-hoc-az."
metadata:
  author: tinhoc-az
  version: "1.6.0"
  language: vi
---

# TikTok Carousel Sao Việt

## Đọc trước khi làm

Đọc toàn bộ [hệ thiết kế và QA](references/design-system.md) trước khi viết prompt, render hoặc sửa ảnh. Đọc [cổng chọn chủ đề](references/topic-selection.md) khi tự chọn nội dung hoặc lập batch; đọc [thư viện prompt](references/prompts-mau.md) để mượn cấu trúc visual. Hệ thiết kế hiện hành ghi đè palette, tọa độ, footer và QA cũ nằm trong các template.

User chỉ yêu cầu sửa skill/nghiên cứu/kiểm tra: không tự render hoặc xuất bản. User yêu cầu tạo ảnh/làm luôn/chạy một phát: làm hết nội dung → ImageGen từng slide → lưu → QA, không dừng ở prompt.

## HARD OVERRIDE — Clean Editorial + TikTok Safe Zone

Áp dụng trước mọi template, rotation và chỉ dẫn bố cục bên dưới. Rotation dùng để tránh lặp ý tưởng, không được làm thiết kế rối hơn.

- Canvas cố định `1080×1920px`, dọc `9:16`.
- Envelope dự phòng là `X=90–930`, `Y=250–1640`; working zone thông tin là `X=120–920`, `Y=280–1580`. Đây là profile project, không phải safe zone TikTok chính thức cho mọi thiết bị.
- **Khóa tâm thị giác:** tâm canvas là `X=540`. Cụm nội dung chính mặc định nằm trong `X=160–920` và phải cân quanh trục `X=540`. Trọng tâm thị giác của headline + module chính nên nằm trong `X=520–560` (không tính số trang và nền trang trí).
- Với bảng rộng hoặc before/after được phép dùng `X=120–920`, nhưng phải phân bổ khối lượng hai bên trục `X=540`; không để cả cụm co về trái rồi chừa một mảng trống lớn ở phải.
- Phong cách mặc định cho hệ Sao Việt: tone tham chiếu bài Tin học ngày 19-09-2026 — nền trắng/ice sáng, headline navy rất đậm, điểm neo xanh điện–cyan rõ. Vàng chỉ dùng cho cảnh báo hoặc nhấn có ý nghĩa, không bắt buộc trên mọi slide. Kênh có palette riêng được thay hue nhưng phải giữ độ tương phản và độ nổi tương đương.
- Ngôn ngữ hình ảnh mặc định là **flat 2D**; một biểu tượng/minh họa chủ đạo cho mỗi slide.
- Mỗi slide chỉ có **1 điểm neo thị giác chính** và tối đa **2 module nội dung lớn**. Không thêm card/shape/icon chỉ để lấp khoảng trống.
- Chừa khoảng thở có chủ đích nhưng không bó nội dung vào giữa. Headline gợi ý ở `Y=420–610`, nội dung chính `Y=640–1500`, CTA/footer cuối `Y=1390–1580`; phần tử có nghĩa cuối nên chạm khoảng `Y=1380–1500`.
- Viền mảnh, bóng rất nhẹ hoặc không bóng. Mặc định tránh 3D, keycap nổi, giấy chồng lớp, glassmorphism dày, texture nặng, khung viền dày và nhiều tiêu điểm cạnh tranh.
- Cover = một headline mạnh + một hình chủ đạo. Slide nội dung = tối đa hai vùng đọc. Slide cuối = một tóm tắt/bảng + một CTA.
- Nếu nội dung không vừa, rút gọn hoặc tách slide; không thu nhỏ chữ, không nhồi thêm module.
- Nếu user yêu cầu phong cách khác, được đổi ngôn ngữ hình ảnh nhưng vẫn giữ nguyên safe zone, một trọng tâm, tối đa hai module và khả năng đọc trên điện thoại.

Trước khi PASS, loại mọi chi tiết có thể bỏ mà không làm mất nghĩa. Nếu mắt không biết nhìn đâu trước, có hơn hai module lớn, hoặc trọng tâm thị giác nằm ngoài `X=520–560`, đánh `FAIL THIẾT KẾ`.

## Luân phiên nội dung và thiết kế

- Xem mỗi kênh là một slot luân phiên, không gán “phong cách cố định” cho kênh.
- Trước khi viết, tạo `Rotation Matrix`: kênh → visual/layout/dạng bài của hai batch gần nhất → lựa chọn hôm nay → lý do khác biệt. Đặt bản tóm tắt trong `promptimage.md` và bài liên quan trong `Baidang.md`.
- Loại visual, layout, hook, CTA và bộ khung bài đã dùng trong hai batch gần nhất của cùng kênh, trừ khi user yêu cầu lặp. Trong ba batch liên tiếp phải có ít nhất ba dạng nội dung.
- Mỗi lần phải đổi ít nhất 4/6 yếu tố: visual group, layout family, trọng tâm định dạng ảnh, cấu trúc headline, post format và CTA style.
- Trong batch nhiều kênh, không dùng cùng layout chính hoặc cùng kiểu mở đầu cho hai kênh, trừ chiến dịch đồng bộ do user yêu cầu.
- Ghi `Rejected repeats` ngắn cho từng kênh. Đổi màu/icon/ví dụ nhưng giữ nguyên bộ khung không được tính là đa dạng.
- Nếu toàn batch giống một template nhân bản, viết lại hoặc render lại mục yếu nhất trước khi báo hoàn tất.

Skill điều phối nhiều kênh trong hệ Sao Việt, gồm Tin học, Kế toán và Đồ họa. Không dùng skill tuyển dụng trừ khi user nói rõ là nội dung tuyển dụng.

## Nguồn project

Khi làm việc trong project, đọc nhanh các file này trước khi tạo nội dung:

- `kichbantinhocaz.md`: kế hoạch 10 bài carousel theo trend AI văn phòng (kênh chính, folder ngày ở project root).
- **Kênh con — Kế toán:** kịch bản `Kế toán/kichbanketoan.md`, folder ngày `Kế toán/DD-MM-YYYY/`. Comment = "Tài liệu / cheat-sheet" (không phải prompt ChatGPT).
- **Kênh con — Đồ hoạ:** kịch bản `Đồ hoạ/kichbandohoa.md`, folder ngày `Đồ hoạ/DD-MM-YYYY/`. Nội dung thủ thuật Photoshop/Illustrator/CorelDraw/thiết kế. Comment = "Tài nguyên / file mẫu" (PSD/AI, preset, bảng màu, font). Ưu tiên style ảnh: Glassmorphism, Gradient Mesh, Bold Typography, Flat Illustration.
- `kenh_tin_hoc_new.md`: style block và ví dụ carousel hướng dẫn ChatGPT.
- `kenh_tin_hoc_van_phong_30_ngay.md` và `kenh_tin_hoc_van_phong_ngay_16_30.md`: kho ý tưởng/ngày cho Excel, Word, PPT.
- `references/prompts-mau.md` là thư viện visual đi kèm và luôn dùng được khi chạy ở project khác. Nếu project hiện tại có `promptmau.md`, so sánh hash; nếu khác thì dừng trước khi render và hỏi bản nào là chuẩn, không tự ghi đè. Việc project khác không có `promptmau.md` không phải lỗi.
- Folder ngày gần nhất, ví dụ `18-05-2026/`: xem cấu trúc `Baidang.md`, `promptimage.md`, `image/`.

Nếu file cũ ghi `1080x1080` hoặc `1080×1080`, coi đó là chuẩn cũ. Chuẩn hiện tại của skill này là TikTok dọc `1080x1920`, tỷ lệ `9:16`.

## Output bắt buộc

Dùng ngày đăng user yêu cầu. Với từ tương đối như “hôm nay” hoặc “ngày mai”, quy đổi theo ngày và múi giờ hiện tại của phiên; nếu user không nêu ngày thì dùng ngày hiện tại. Tạo folder:

```text
DD-MM-YYYY/
├── Baidang.md
├── promptimage.md
├── image/
└── source/                 # chỉ tạo khi có screenshot/tài sản nguồn thật
```

Nếu đã có folder ngày đó, append bộ mới vào cuối file hiện có hoặc tạo tiêu đề phân cách rõ ràng. Quét các heading và tên ảnh để chọn số bài kế tiếp `baiN`; không ghi đè `bai1_*` hoặc nội dung cũ.

## Chạy một phát

Khi user nói các câu như "chạy 1 phát", "làm luôn", "tạo ảnh luôn", "chạy ảnh theo promptimage", "sử dụng model ChatGPT tạo ảnh", hoặc yêu cầu tương tự, phải hiểu là chạy trọn quy trình:

1. Tạo/cập nhật `Baidang.md`.
2. Tạo/cập nhật `promptimage.md`.
3. Tạo ảnh từng slide bằng công cụ/model tạo ảnh đang có.
4. Lưu ảnh vào `DD-MM-YYYY/image/` theo tên `baiN_slide_1.png`, `baiN_slide_2.png`, ... với `N` là số bài kế tiếp chưa tồn tại.
5. Kiểm tra đủ số ảnh theo số slide trong `promptimage.md`.

Không hỏi lại nếu chủ đề/số bài đã rõ. Không dừng ở bước viết prompt khi user đã yêu cầu tạo ảnh.

Nếu môi trường hiện tại không có công cụ tạo ảnh có khả năng lưu file trực tiếp, nói rõ giới hạn đó và vẫn chuẩn bị đầy đủ `Baidang.md`, `promptimage.md`, cùng hướng dẫn thao tác ảnh trong file.

## Loại bài phù hợp

Ưu tiên nội dung chia sẻ thực dụng cho dân văn phòng/người học tin học:

- Phím tắt Excel, Word, PowerPoint, Windows, Chrome, Gmail.
- Công thức Excel/Google Sheets chi tiết: giải thích công thức dùng để làm gì, khi nào dùng, cú pháp, ví dụ dữ liệu, 1 dòng công thức mẫu, lỗi hay gặp.
- Bộ hàm Excel cơ bản/nâng cao: ví dụ "20 hàm Excel cơ bản", mỗi hàm có 1 câu giải thích dễ hiểu + 1 công thức mẫu dùng ngay.
- Case thực tế văn phòng: tính lương, lọc danh sách, dò mã nhân viên, tách họ tên, gộp dữ liệu, làm báo cáo doanh thu, tạo bảng theo dõi công việc.
- Mẹo ChatGPT/AI tạo file Excel, Word, PowerPoint.
- Prompt tạo file văn phòng dùng được ngay.
- Bài listicle: "10 phím tắt...", "20 hàm Excel...", "5 lỗi...", "7 mẹo...", "6 công thức cứu dân văn phòng...".
- Bài tutorial từng bước: mở công cụ, paste prompt, tải file, chỉnh sửa.

### Chọn chủ đề theo giá trị xem

Khi user không chỉ định chủ đề, phải chạy `TOPIC VALUE GATE` trong [cổng chọn chủ đề](references/topic-selection.md). Kế hoạch, giáo trình và danh sách ý tưởng là nguồn để chọn, không phải lịch đăng bắt buộc. Được bỏ qua hoặc hoãn nội dung quá cơ bản để ưu tiên lỗi thường gặp, thao tác tiết kiệm thời gian, before–after rõ, tính năng ít người biết hoặc case công việc thật.

Không xuất bản một nút/menu đơn giản chỉ để đi hết danh sách. Chủ đề điểm thấp phải được gộp thành checklist/bộ thao tác, đặt trong tình huống thực tế hoặc đổi góc sang kết quả cụ thể. Với batch nhiều kênh, chấm riêng từng kênh; không dùng cùng một hook thắng rồi thay tên môn.

### Bắt buộc đa dạng nội dung kênh Tin học chính

Không được mặc định kênh Tin học chính chỉ làm bài phím tắt. Khi user nói chung chung như "lên bài hôm nay", "bên tin học", "Tiktok tin học AZ", phải xoay vòng giữa nhiều nhóm nội dung:

1. **Phím tắt / thao tác nhanh**: Excel, Word, PowerPoint, Windows, Chrome, Gmail.
2. **Một công thức chi tiết**: 1 công thức Excel/Sheets hoặc Word/PPT automation, giải thích sâu từng phần.
3. **Bộ hàm / cheat-sheet**: 10-20 hàm Excel cơ bản hoặc theo chủ đề, mỗi hàm có "Dùng để..." + "Công thức mẫu".
4. **Case thực tế văn phòng**: bài toán thật như dò mã, tính thưởng, lọc trùng, tách họ tên, làm báo cáo.
5. **Lỗi thường gặp**: lỗi công thức, lỗi định dạng, lỗi in ấn, lỗi trình bày slide, lỗi mail.
6. **So sánh / chọn đúng công cụ**: VLOOKUP vs XLOOKUP, COUNTIF vs COUNTIFS, SUMIF vs SUMIFS, Word Styles vs format tay.
7. **AI hỗ trợ văn phòng**: dùng ChatGPT tạo công thức, giải thích lỗi Excel, viết macro, tạo dàn ý Word/PPT.

Nếu trong 2 batch gần nhất kênh Tin học chính đã dùng nhiều bài phím tắt, batch tiếp theo phải ưu tiên công thức chi tiết, bộ hàm, case thực tế, lỗi thường gặp hoặc so sánh hàm.

#### Format bài "một công thức chi tiết"

Thường cần 5–7 slide, nhưng số cuối phải theo `SLIDE COUNT GATE`; không thêm slide chỉ để đủ format.

1. Cover hook: tên công thức + lợi ích thực tế.
2. Bài toán: ví dụ dữ liệu/vấn đề văn phòng cụ thể.
3. Công thức mẫu: viết đúng 1 dòng công thức rõ ràng.
4. Giải thích từng phần: mỗi tham số làm gì.
5. Ví dụ kết quả: trước/sau hoặc bảng mini.
6. Lỗi hay gặp: sai vùng dữ liệu, thiếu dấu `$`, sai kiểu dữ liệu, sai dấu phân cách.
7. Tổng kết + CTA.

Comment cho dạng này phải là "Công thức mẫu / cheat-sheet", không chỉ prompt ChatGPT.

Ví dụ:

```text
=XLOOKUP(E2,$A$2:$A$100,$C$2:$C$100,"Không tìm thấy")
Dùng để dò mã nhân viên ở ô E2 trong cột A, trả về phòng ban ở cột C.
```

#### Format bài "20 hàm Excel cơ bản"

Slide count khuyến nghị: 7-9 slide.

- Slide 1: Cover hook.
- Slide 2-6/8: chia nhóm hàm, mỗi slide 3-4 hàm.
- Mỗi hàm bắt buộc có 2 dòng ngắn:
  - `Dùng để:` giải thích bằng ngôn ngữ đời thường.
  - `Mẫu:` 1 công thức ngắn dùng được ngay.
- Slide cuối: bảng tóm tắt/screenshot, CTA lưu lại.

Nhóm hàm gợi ý:

- Tính toán: `SUM`, `AVERAGE`, `MAX`, `MIN`, `ROUND`.
- Đếm và điều kiện: `COUNT`, `COUNTA`, `COUNTIF`, `COUNTIFS`, `SUMIF`, `SUMIFS`.
- Dò tìm: `XLOOKUP`, `VLOOKUP`, `INDEX`, `MATCH`.
- Xử lý chữ: `LEFT`, `RIGHT`, `MID`, `LEN`, `TRIM`, `TEXTJOIN`.
- Ngày tháng: `TODAY`, `DATEDIF`, `EOMONTH`, `NETWORKDAYS`.

Ví dụ copy slide:

```text
SUM
Dùng để: cộng tổng một vùng số
Mẫu: =SUM(B2:B20)

COUNTIF
Dùng để: đếm ô thỏa 1 điều kiện
Mẫu: =COUNTIF(C2:C100,"Đạt")
```

Nếu user yêu cầu "2 kênh khác nhau", tạo 2 bài cùng chủ đề lớn nhưng khác góc:

- Kênh 1: Excel/Tin học văn phòng thực dụng.
- Kênh 2: Word/PowerPoint/Windows hoặc biến thể nâng cao để tránh trùng nội dung.

## Cấu trúc Baidang.md

`Baidang.md` bắt buộc viết bằng tiếng Việt có dấu đầy đủ trong tiêu đề, mô tả, nội dung slide, tài nguyên/comment và các ghi chú. Không viết kiểu không dấu như `BAI DANG`, `TIEU DE`, `Cong thuc mau`, trừ khi đó là tên file, mã công thức, hashtag, URL, phím tắt, lệnh, hoặc placeholder kỹ thuật cần ASCII.

Mỗi bài gồm:

```markdown
# BÀI [số/tên] — [TIÊU ĐỀ]
## Ngày đăng: DD/MM/YYYY
## Kênh: [Tên kênh nếu user đưa, nếu không dùng Tin Học Sao Việt]
## Format: TikTok Carousel 9:16

## THÔNG TIN BÀI ĐĂNG
- Chủ đề:
- Số slide:
- Kích thước: 1080×1920px dọc, 9:16
- Độ khó:
- Khung giờ đăng:

## TIÊU ĐỀ TIKTOK — KHÔNG ĐƯA LÊN ẢNH
```text
[hook tối đa 90 ký tự]
```

**Độ dài tiêu đề:** N/90 ký tự.

## MÔ TẢ TIKTOK — KHÔNG ĐƯA LÊN ẢNH
```text
[1–2 câu ngắn, khoảng 70–160 ký tự trước hashtag]

[3–5 hashtag liên quan]
```

## NỘI DUNG TỪNG SLIDE
### Slide 1/N — Cover Hook
**Text trên ảnh:**
```text
[copy slide]
```

...

## PROMPT ĐẦY ĐỦ (ĐĂNG Ở COMMENT)
```text
[prompt nếu là bài AI/ChatGPT; nếu là bài phím tắt thì có thể là bảng tóm tắt để comment]
```
```

### Chọn số slide theo lượng kiến thức

Không có số slide tối thiểu cố định:

- **3–4 slide:** một kết quả đơn giản, một đường bấm ngắn hoặc một lỗi nhỏ.
- **5–6 slide:** bài trung bình có nhiều trạng thái, ví dụ hoặc lỗi cần giải thích.
- **7–9 slide:** chỉ cho bộ hàm/listicle dài, nhiều nhóm kiến thức hoặc quy trình phức tạp.

Mỗi slide phải thêm kiến thức hoặc bằng chứng mới. Nếu bỏ slide mà người xem vẫn làm được trọn bài thì gộp hoặc xóa. Bài phím tắt ngắn có thể chỉ 4–5 slide; bộ phím lớn mới cần 6–8.

## Cấu trúc promptimage.md

Mỗi slide có prompt riêng, tự chứa đủ thông tin. Mở đầu file bằng block hướng dẫn tạo ảnh bằng ChatGPT, sau đó tới style block 9:16.

### Hard rule — promptimage không được sơ sài

`promptimage.md` của skill này PHẢI đạt cùng chuẩn chất lượng với `tiktok-tin-hoc-az`. Không được viết prompt ngắn kiểu "tạo ảnh slide 1 nền xanh chữ lớn" hoặc chỉ ghi vài dòng mô tả chung.

Mỗi lần tạo `promptimage.md`, bắt buộc:

1. Đọc và dùng `references/prompts-mau.md` làm thư viện visual chính. Nếu project root có `promptmau.md` mới hơn thì có thể đối chiếu, nhưng output cuối vẫn phải theo chuẩn dọc 9:16 của skill.
2. Ghi rõ `Template visual đã chọn` cho cả bài hoặc từng nhóm slide, ví dụ `Prompt 4: Banner Khoá Học — Futuristic AI Dọc`, `Prompt 10: Bold Typography`, `Prompt 14: Flat Illustration`.
3. Có `Rotation Matrix` / `Ma trận visual` ở đầu file: bài → slide range → template # → visual group → layout family → màu chủ đạo → lý do khác batch gần nhất.
4. Giữ nguyên hoặc nhúng đầy đủ `STYLE BLOCK 9:16` với:
   - `BRAND COLOR PALETTE (Tin Học Sao Việt)`
   - `CRITICAL TIKTOK SAFE ZONE`
   - typography size
   - footer/brand bar rule
   - avoid list
5. Mỗi slide prompt phải tự chứa đủ:
   - canvas `1080x1920`, `9:16`
   - safe-zone instruction
   - màu sắc cụ thể bằng mã màu
   - layout cụ thể (card, grid, table, timeline, checklist, before/after...)
   - text tiếng Việt nguyên văn cần render
   - icon/visual gợi ý
   - footer rule: slide đầu/cuối có `Footer: "Tin Học Sao Việt"`; slide giữa ghi `No added brand logo, no footer text`; nếu có screenshot thật thì giữ nguyên dấu hiệu ứng dụng native bên trong ảnh nguồn
   - câu bắt buộc về tiếng Việt có dấu
6. Không nhân bản nguyên một layout cho toàn bộ slide. Trong một bài 6-8 slide, dùng tối thiểu 2 họ bố cục nhưng giữ cùng hệ clean editorial; thay đổi cấu trúc để phục vụ nội dung, không đổi chỉ để phô diễn, ví dụ:
   - Cover hook: bold typography sạch / flat illustration
   - Slide nội dung: checklist card / bảng mini / before-after / step-by-step
   - Slide cuối: summary table / screenshot card / CTA save
7. Nếu bài là công thức Excel, prompt ảnh phải có bảng/công thức được đặt trong white card, chữ lớn, không mô phỏng screenshot Excel quá nhỏ.
8. Nếu bài là AI/ChatGPT, prompt ảnh phải có workflow cards, prompt box, input/output mini card, không dùng robot/cyberpunk lố.
9. Nếu bài là phím tắt, prompt ảnh phải có keycap/icon rõ và bảng tóm tắt cuối bài.
10. Trước khi báo hoàn tất, tự rà `promptimage.md`: nếu thiếu style block, thiếu safe-zone, thiếu mã màu, thiếu template #, thiếu giới hạn một trọng tâm/hai module, hoặc prompt từng slide dưới 5 dòng thì phải viết lại.

Trước khi gọi ImageGen, chạy hai cổng:

- `SLIDE COUNT`: ghi một dòng giá trị mới của từng slide; slide tách một click quá nhỏ, lặp bước trước hoặc chỉ tồn tại để đủ số phải bị gộp/xóa.
- `SHOT DISTINCTNESS`: lập bản đồ screenshot/ảnh thật theo slide. Mỗi ảnh/crop phải cho thấy trạng thái, vùng giao diện hoặc bằng chứng mới. Phóng to lại cùng một ảnh không tự tạo giá trị mới; chỉ lặp khi cần giữ định hướng và phải ghi lý do.

ImageGen phải thiết kế artwork slide thực tế gồm headline, hierarchy, module, nhãn và khung chờ screenshot; không chỉ tạo nền rồi dựng toàn bộ slide bằng script. Hậu kỳ tất định chỉ dùng để ghép ảnh thật, che riêng tư, đóng khung, thêm mũi tên/số bước và asset thật.

### Chọn visual từ thư viện 19 mẫu

Khi viết prompt từng slide, dùng một trong các visual groups sau lấy từ `references/prompts-mau.md`. Mặc định chỉ mượn **cấu trúc** của template và diễn giải lại bằng hệ clean editorial ở trên; không tự bật neon/3D/glassmorphism nặng nếu user không yêu cầu:

| Template # | Nhóm visual | Dùng tốt cho |
|------------|-------------|--------------|
| 1 | Canva Grid Dọc | cover tổng quan, 4 ý chính |
| 3 | Neon Tech Dọc | AI, automation, công nghệ |
| 4 | Futuristic AI Dọc | AI văn phòng, ChatGPT workflow |
| 5 | Infographic Timeline | lộ trình, quy trình từng bước |
| 7 | Glassmorphism UI | tool AI, dashboard, prompt workflow |
| 8 | Isometric Workspace | case văn phòng, học thực hành |
| 9 | Before/After | lỗi cũ vs cách mới, trước/sau |
| 10 | Bold Typography | cover hook cực ngắn, CTA mạnh |
| 14 | Flat Illustration | mẹo nhẹ, slide giải thích |
| 16 | Gradient Mesh | cover premium, slide tổng kết |
| 18 | Workspace Productivity | Excel/Word/PPT năng suất |
| 19 | Corporate Professional | đào tạo doanh nghiệp, kỹ năng công sở |

Bảng trên là nhóm khuyến nghị, không phải danh sách đầy đủ. Đọc `references/prompts-mau.md` để xem đủ 19 mẫu; không bắt buộc dùng đủ trong một bài nhưng phải chọn có chủ đích và ghi rõ template # trong `promptimage.md`.

### Hướng dẫn tạo ảnh bắt buộc

Luôn thêm phần này vào đầu `promptimage.md` trước Style Block:

```markdown
## HƯỚNG DẪN TẠO ẢNH BẰNG CHATGPT

Làm lần lượt từng slide, không dán toàn bộ file một lần.

> Ghi chú vận hành: nếu yêu cầu Codex "chạy ảnh", "tạo ảnh", "làm ảnh theo promptimage" hoặc "chạy 1 phát", Codex phải tự dùng model tạo ảnh để tạo lần lượt toàn bộ slide theo file này và lưu vào `DD-MM-YYYY/image/`. Không chỉ dừng ở việc viết prompt.

### Bước 1 — Mở model tạo ảnh

Vào ChatGPT → chọn model có tạo ảnh → bấm dấu + → Create image / Tạo ảnh.
Nếu có ô chọn tỷ lệ, chọn 9:16 hoặc Vertical.

### Bước 2 — Copy prompt cho từng slide

1. Copy toàn bộ STYLE BLOCK 9:16.
2. Copy thêm prompt của đúng slide cần tạo.
3. Dán cả 2 phần vào ChatGPT trong cùng một lần.
4. Nếu trong prompt có [STYLE BLOCK], thay bằng nội dung STYLE BLOCK 9:16 ở trên.

### Bước 3 — Lưu ảnh đúng tên

Lưu vào `DD-MM-YYYY/image/`, đặt tên `baiN_slide_1.png`, `baiN_slide_2.png`, ...; xác định `N` từ dữ liệu đã có và không ghi đè ảnh cũ.

### Bước 4 — Nếu ảnh lỗi chữ

Yêu cầu ChatGPT sửa: "Giữ nguyên bố cục, làm chữ tiếng Việt rõ hơn, không sai dấu, không méo chữ, không cắt chữ ở cạnh. Giữ tỷ lệ 9:16."
```

### Style block chuẩn

```text
Modern digital education TikTok carousel, vertical 1080x1920px, 9:16 ratio, Canva premium template feel, mobile-first design.

BRAND COLOR PALETTE (Tin Học Sao Việt):
- Canvas: #FEFEFE or #FFFFFF.
- Ice grouping: #E8F7FD and #D8ECFA.
- Website sky: #5EB9F0.
- Electric blue: #0878F8.
- Cyan: #00BCEB.
- Deep navy: #08084F.
- Body navy: #17205F.
- Yellow #FAB758: optional, only for warning or meaningful emphasis.
- Alert: #B30000.
- Cool gray: #B8CADF.

CRITICAL TIKTOK SAFE ZONE:
All text, CTA buttons, badges, tables, and important icons must stay inside the central safe zone, visually centered in the middle of the frame.
- Canvas: 1080x1920.
- Provisional envelope for text and key content: X=90 to X=930, Y=250 to Y=1640.
- Working envelope: X=120 to X=920, Y=280 to Y=1580.
- Default primary content column: X=160 to X=920, centered on canvas axis X=540.
- Optical QA target: visual-weight centroid of headline + main modules must stay within X=520 to X=560, excluding page number and background decoration.
- Keep top area Y=0-249 visually clear for TikTok header/search UI.
- Keep bottom area Y=1641-1920 free of readable text and meaningful content.
- Keep right area X=931-1080 visually clear for TikTok like/comment/share buttons.
- Keep left area X=0-89 visually clear; do not let text or badges hug the edge.
- Main headline, body text, CTA, tables, and footer must stay inside X=120-920 and Y=280-1580.
- Footer/brand bar, when allowed, must sit inside X=220-860 and Y=1530-1580.
- Decorative background shapes may extend outside the safe zone only if they contain no text and are not important for understanding.
- Do not place any readable text, CTA, badge, table cell, or important icon near corners or edges.

HARD SAFE-ZONE LOCK — NON-NEGOTIABLE:
- Put every readable word and meaningful element completely inside X=120..920 and Y=280..1580.
- Center the primary composition on canvas axis X=540; use X=160..920 by default. Never shrink the complete artwork toward the left.
- Use Y=420..610 for headline, Y=640..1500 for main content, Y=1390..1500 for CTA when present, and Y=1530..1580 for footer.
- Place page numbers only inside X=790..900 and Y=290..350, never at a canvas corner.
- Reflow, shorten, or split overloaded content. Do not shrink the complete slide or leave the lower working zone empty merely to avoid UI.

Typography: clean bold sans-serif, Vietnamese diacritics clear and sharp. Main headline 64-88pt, body text 34-44pt, small labels minimum 28pt. Use no more than 2 font families and 3 font weights.

DEFAULT CLEAN EDITORIAL SYSTEM:
- Match the approved 19-09 tone for the core Sao Việt system: crisp white/ice-blue canvas, very dark navy headline, compact electric-blue-to-cyan anchors, bright-blue outlines and restrained soft blue shadow.
- Aim for roughly 60–70% white, 20–30% ice/pale cyan and 5–10% saturated blue/cyan/navy. Yellow is optional and semantic, never mandatory decoration.
- Flat 2D visual language. One dominant symbol or illustration per slide.
- Maximum 2 large content modules per slide. Use thin rules, light borders, and almost no shadow.
- Keep 18-30% intentional breathing room inside the working zone. Do not fill empty space with extra cards or decoration.
- No 3D keycaps, stacked paper mockups, heavy glassmorphism, thick outlines, or multiple competing focal points by default.

Layout: clean vertical composition, generous intentional spacing, strong hierarchy, big readable text on a phone. Rounded cards are optional, not mandatory; when used, keep borders subtle and shadows minimal.

Bottom brand bar (CHỈ slide đầu + slide cuối): compact footer inside safe zone, "Tin Học Sao Việt" in deep navy with a small electric-blue/cyan accent.

Avoid: square layout, tiny text, dense paragraphs, watermark, QR code, fake software UI, human faces unless requested, cluttered backgrounds, excessive cards, 3D decoration, distorted Vietnamese text.
```

### Quy tắc footer / brand bar (BẮT BUỘC)

- CHỈ slide đầu tiên (Cover Hook) và slide cuối cùng (Bảng tóm tắt / CTA) có footer thương hiệu. Trong prompt ghi: `Footer: "Tin Học Sao Việt".`
- Tất cả slide giữa (slide 2 đến slide kế cuối) KHÔNG có footer. Trong prompt ghi rõ: `No added brand logo, no footer text.`
- Không tự thêm logo hình ảnh, logo app Word/Excel/PowerPoint hoặc logo giả để trang trí; chỉ dùng footer chữ "Tin Học Sao Việt" ở slide đầu/cuối. Logo/icon native vốn nằm trong screenshot thật phải được giữ nguyên như một phần của bằng chứng giao diện.
- Slide Cover dùng CTA `"Vuốt sang →"` với mũi tên `→` (không dùng `->`).
- Badge bước và số trang phải nằm trong vùng làm việc. Số trang viết kiểu `page indicator "2/6" inside X=790-900, Y=290-350`; không dùng `top-right`, `bottom-right` hoặc neo vào góc canvas.
- Slide nội dung: keycap/icon bên trái, mô tả in đậm bên phải; có thể thêm 1 "Bottom note pill" ngắn.
- Slide tóm tắt: bảng 2 cột "Phím tắt | Chức năng" trong white card, tiêu đề kiểu "CHỤP MÀN HÌNH SLIDE NÀY".

### Ảnh hướng dẫn phần mềm phải dùng giao diện thật

- Nếu user cung cấp giáo trình/tài liệu nguồn, kiểm tra ảnh trong nguồn trước: ảnh đúng bước và đủ rõ thì crop trực tiếp, giữ mũi tên/highlight đúng đã có và không thêm trùng. Nếu nguồn không có, mờ hoặc thiếu ngữ cảnh thì mở phần mềm đang hướng dẫn để thao tác và chụp thật.
- Trước khi lên bài, xác định phần mềm liên quan có được cài và có thể mở trên máy làm việc hay không.
- Chọn đúng một nhánh minh họa: `(A)` hướng dẫn thao tác + phần mềm có thể mở → screenshot thật; `(B)` bài khái niệm hoặc máy không có phần mềm → infographic/bảng mẫu/sơ đồ, không cần screenshot; `(C)` user bắt buộc hướng dẫn đúng đường bấm nhưng máy không có phần mềm → đổi sang ảnh tài liệu chính thức có nguồn hoặc báo riêng cho user để đổi chủ đề.
- Tên kênh hay bộ môn không tự động làm phát sinh yêu cầu screenshot. Kế toán và Đồ họa chỉ cần screenshot khi bài thực sự hướng dẫn thao tác trên một phần mềm có thể mở.
- Nếu slide yêu cầu bấm tab, nút, menu, hộp thoại hoặc trường nhập trong phần mềm **đang có và có thể mở**, phải dùng screenshot thật từ đúng phần mềm; không để ImageGen tự vẽ giao diện giả. Phần mềm chỉ đang đóng thì phải mở lên để chụp, không coi đó là trường hợp miễn screenshot.
- Ảnh bằng chứng chính phải cho thấy **toàn cửa sổ ứng dụng hoặc đủ ngữ cảnh thao tác**, tối thiểu gồm thanh tiêu đề/Ribbon/menu, vùng làm việc và hộp thoại/panel đang dùng. Không được dùng ảnh crop sát chỉ còn hộp thoại, nút hoặc trường nhập làm bằng chứng duy nhất.
- “Toàn cửa sổ phần mềm” không có nghĩa là chụp cả desktop hệ điều hành. Ưu tiên chỉ lấy trọn cửa sổ ứng dụng để tránh lộ dữ liệu riêng tư và loại bỏ phần desktop không liên quan.
- Nếu toàn cửa sổ làm chi tiết cần bấm quá nhỏ, giữ ảnh toàn cửa sổ làm hình chính rồi thêm một inset phóng to từ chính screenshot đó. Inset chỉ là hình phụ; cả hai phải cùng nguồn raster và không được AI vẽ lại.
- Khóa rõ phần mềm, nền tảng, phiên bản và ngôn ngữ giao diện. Screenshot gốc chỉ được crop, che dữ liệu riêng tư, đóng khung, thêm mũi tên/số bước/highlight; không sửa chữ, icon hay vị trí nút.
- Chỉ được crop phần viền desktop ngoài cửa sổ và phải scale đồng tỷ lệ; không kéo méo screenshot. Lưu đường dẫn nguồn cùng hash khi nghiệm thu để đối chiếu file ghép.
- Với nhánh `(A)` có screenshot, ImageGen tạo artwork slide thực tế gồm headline, hierarchy, module, nhãn và khung chờ screenshot; sau đó ghép screenshot thật vào khung. ImageGen không được vẽ lại UI. Với nhánh `(B)`, ImageGen được tạo toàn bộ infographic khái niệm nhưng không được mô phỏng UI phần mềm.
- Với nhánh `(B)`, dùng infographic khái niệm, bảng dữ liệu mẫu, sơ đồ quy trình, checklist, before/after kết quả, bảng màu/font hoặc minh họa công cụ tổng quát; tuyệt đối không dựng UI giả rồi trình bày như ảnh chụp thật.
- Slide hướng dẫn sai nút, sai đường dẫn hoặc dùng UI do AI bịa phải đánh `FAIL NGHIỆP VỤ`.
- Chỉ thêm cột `Giao diện thật`/`Ngữ cảnh phần mềm` vào QA khi bài có screenshot hoặc hướng dẫn thao tác phần mềm. Với bài minh họa khái niệm, dùng cột chung `Nguồn/minh họa` và chỉ ghi kết quả `PASS`/`FAIL`; không ghi tình trạng cài đặt phần mềm vào `Baidang.md`, `promptimage.md`, ảnh hoặc bảng QA giao cho user.
- Không ghi nhãn “N/A — KHÔNG CÓ PHẦN MỀM; DÙNG MINH HỌA KHÁI NIỆM” trong nội dung, prompt hoặc QA giao user.
- Prompt có câu `No screenshot`, `no real UI` hoặc yêu cầu vẽ trường/nút dạng infographic trong slide hướng dẫn thao tác trên phần mềm có sẵn là xung đột và phải bị loại bỏ. Không áp dụng lệnh chặn screenshot một cách máy móc cho bài Kế toán/Đồ họa không có phần mềm chuyên dụng.

## Quy tắc viết nội dung

- Hook ngắn, nhìn 1 giây hiểu ngay.
- Tiêu đề TikTok phải viết như hook riêng của bài đăng, không chỉ lặp lại tên chủ đề. Tối đa 90 ký tự. Ưu tiên ghép 2 vế trong cùng tiêu đề: vế 1 nêu vấn đề đau/cách làm cũ, vế 2 nêu giải pháp hoặc kết quả nhanh. Ví dụ: "Đừng dò mã nhân viên bằng mắt nữa. XLOOKUP dò mã trong 10 giây". Tiêu đề vẫn phải ngắn, tự nhiên, không giật tít quá đà.
- Trước khi lưu phải đếm và ghi `Độ dài tiêu đề: N/90` trong `Baidang.md`.
- Mô tả TikTok là metadata, mặc định 1–2 câu ngắn khoảng 70–160 ký tự trước hashtag, rồi 3–5 hashtag. Không chép lại tiêu đề hoặc toàn bộ slide. Tiêu đề và mô tả tuyệt đối không render lên ảnh.
- Mỗi slide tối đa 3-5 ý chính; bài phím tắt dùng bảng/nhóm phím.
- Copy tiếng Việt rõ dấu, thực tế, không quá quảng cáo.
- CTA nhẹ: "Lưu lại", "Screenshot slide cuối", "Follow để học tiếp".
- Hashtag gợi ý: `#tinhocvanphong #Excel #Word #PowerPoint #phimtat #ChatGPT #AI #tinhocaz`.

## Bài phím tắt

Format khuyến nghị:

1. Cover hook.
2. Nhóm cơ bản.
3. Nhóm thao tác nhanh.
4. Nhóm định dạng.
5. Nhóm nâng cao hoặc ứng dụng thực tế.
6. Bảng tóm tắt/screenshot.
7. CTA.

Ví dụ chia 2 bài cùng ngày:

- Bài A: `10 phím tắt Excel dân văn phòng phải biết`.
- Bài B: `7 phím tắt Word soạn văn bản nhanh hơn`.

Nếu user muốn cả hai bài đều cùng một app, tách thành `cơ bản` và `nâng cao`.

## Quy trình làm việc

1. Xác nhận số bài, kênh, chủ đề từ yêu cầu user. Nếu thiếu, tự chọn theo mạch project.
2. Đọc nhanh file nguồn liên quan và bài gần nhất để tránh trùng.
3. Tạo `Baidang.md` đầy đủ tiêu đề TikTok + mô tả TikTok + text từng slide.
4. Tạo `promptimage.md` với style block 9:16 và prompt từng slide.
5. Tạo folder `image/` rỗng nếu chưa có.
6. Báo lại đường dẫn file đã tạo và ghi rõ chuẩn `1080x1920, 9:16`.

Không tự tạo ảnh trừ khi user yêu cầu dùng image generation.

<!-- standardized-vietnamese-image-qa:v1 -->
## Bước cuối bắt buộc — nghiệm thu ảnh và chính tả tiếng Việt

Áp dụng bước này **sau mọi thao tác render, chỉnh sửa, ghép ảnh nguồn hoặc chèn logo** và trước khi đặt tên/lưu vào vị trí final, đưa link hoặc báo hoàn tất. Quy tắc này ghi đè mọi chỉ dẫn cũ chỉ yêu cầu kiểm tra một vài ảnh mẫu.

1. **Khóa bản kê chữ (Text Manifest) trước khi render:** liệt kê nguyên văn, theo từng file/slide, mọi chữ dự kiến xuất hiện: headline, nội dung, nhãn, CTA, footer, tên riêng, địa chỉ, số điện thoại, ngày tháng và số liệu. Rà chính tả, dấu câu, viết hoa và Unicode tiếng Việt ngay trên bản kê. Với screenshot/review/bằng chứng do user cung cấp, giữ nguyên pixel và nguyên văn nguồn; không tự “sửa chính tả” nội dung chứng cứ.
2. **Khóa chữ trong prompt:** prompt phải chép đúng từng dòng từ Text Manifest, cấm model diễn đạt lại hoặc tự thêm chữ, và chứa nguyên câu: *"All Vietnamese text must be rendered with full, correct Vietnamese diacritics (dấu thanh + dấu mũ/móc). Do NOT omit, simplify, romanize, or alter any diacritical marks."*
3. **Mở và soi 100% ảnh cuối:** xem từng PNG/JPG ở độ phóng đại đủ đọc, không duyệt qua thumbnail và không kiểm tra theo mẫu. Đối chiếu từng ký tự với Text Manifest và, nếu có, mở ảnh nguồn cạnh thành phẩm. Kiểm tra dấu thanh, dấu mũ/móc, `ă/â/ê/ô/ơ/ư/đ`, tên riêng, chữ hoa/thường, khoảng trắng, dấu câu, số, địa chỉ và thuật ngữ. OCR chỉ được dùng để hỗ trợ, không thay cho việc đọc trực quan.
4. **Kiểm tra cả chữ ngoài dự kiến:** mọi chữ nhìn thấy trên bảng, màn hình, sách, poster, UI minh họa, watermark hoặc nền đều phải đọc được và có trong Text Manifest. Chữ vô nghĩa, ký tự méo, chữ AI tự sinh, chữ thừa, mojibake hoặc ký tự thay thế Unicode đều là lỗi.
5. **Nghiệm thu thiết kế và tài sản:** đúng kích thước/tỉ lệ; không cắt hoặc tràn chữ; vùng an toàn và độ tương phản đạt; không kéo méo ảnh nguồn; không thay người/avatar/nội dung chứng cứ; không có logo giả. Logo bắt buộc phải là asset thật và đúng tỷ lệ nếu workflow yêu cầu logo. Không thêm hotline, địa chỉ, ưu đãi, chứng nhận, kết quả hoặc cam kết chưa được nguồn đầu vào xác nhận. Kiểm tra thêm độ sạch: đúng một điểm neo chính, không quá hai module lớn, không có trang trí vô nghĩa và không có hai tiêu đề tranh cấp bậc. Kiểm tra tâm thị giác: headline + module chính phải cân quanh `X=540`, trọng tâm ước lượng trong `X=520–560`; nếu cụm nội dung gom trái hoặc bị bó giữa với khoảng trống dưới quá lớn thì `FAIL THIẾT KẾ`.
   - Tạo bản xem ở 360×640 và 390×693; target cần đọc/bấm phải rõ ở toàn slide.
   - Tạo overlay hình học cho envelope/working zone/page indicator và mở từng ảnh, không PASS chỉ từ script.
   - Mở contact sheet để kiểm tra nhịp: không có hai slide liên tiếp dùng cùng screenshot/crop hoặc cùng bằng chứng mà chỉ thay tiêu đề.
   - Chạy `VIVIDNESS GATE`: headline tối phải rõ và có ít nhất một điểm neo màu bão hòa theo palette kênh. Với tone Sao Việt mặc định, phải nhận ra xanh điện/cyan ở bản 360px; vàng không phải điều kiện PASS.
6. **Sửa đúng cách và kiểm tra lại từ đầu:** ảnh có dù chỉ một lỗi phải bị đánh dấu `FAIL` và tạo/chỉnh lại. Nếu user yêu cầu artwork bằng ImageGen, tiếp tục dùng ImageGen để sửa hoặc render lại; không thay artwork bằng ảnh dựng bằng script rồi gọi đó là ảnh ImageGen. Hậu kỳ tất định chỉ dành cho logo thật, ảnh bằng chứng gốc hoặc trường hợp workflow/user cho phép rõ ràng. Sau mỗi lần sửa, mở lại ảnh và lặp toàn bộ bước 3–5.
7. **Chỉ chốt khi mọi ảnh PASS:** ghi checklist hoặc bảng `file | chữ | nguồn | logo | kích thước/bố cục | kết quả`; từng file chỉ được ghi `PASS` khi tất cả cột đạt. Backup trước khi thay ảnh đã có; candidate/rejected để ngoài folder final. Nếu chưa xem preview trong ứng dụng TikTok, chỉ ghi `ĐẠT QA TĨNH — CHƯA KIỂM TRA PREVIEW TIKTOK`; không tuyên bố an toàn xuất bản. Không dùng từ “final”, không đưa link và không báo hoàn tất nếu còn ảnh chưa được kiểm tra hoặc chưa đạt.

Nếu workflow chỉ tạo prompt mà chưa render ảnh thật, vẫn phải hoàn thành bước 1–2, ghi rõ `QA ảnh: CHƯA THỰC HIỆN — chưa render`, và không tuyên bố đã nghiệm thu ảnh.
