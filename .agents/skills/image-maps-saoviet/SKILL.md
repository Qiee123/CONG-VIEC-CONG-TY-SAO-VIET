---
name: image-maps-saoviet
description: Create a locality-specific Google Business Profile/Google Maps post and 4:3 image for Tin Học Sao Việt. Use when a branch asks for “bài hôm nay”, a course post, offer, event, or Tin học văn phòng post for a supplied or contextually known locality. Research both approved Sao Việt websites, prioritize verified course/offer/event pages tied to that locality, and use the fixed text-only footer TIN HỌC SAO VIỆT. This skill never creates Chinese-language/Tiếng Hoa content.
---

# Image Maps Sao Việt

Tạo bài Google Maps Tin Học Sao Việt theo địa phương do user đưa. Mỗi địa phương tương ứng một bài, một ảnh và một deep link đã xác minh. Skill dùng được cho bất kỳ địa phương nào trong hệ thống 13 chi nhánh; không hard-code danh sách chi nhánh.

## Phạm vi cố định

- Nếu user yêu cầu rõ `Khóa học tin học văn phòng tại [LOCAL]`, giữ đúng chủ đề đó.
- Nếu user chỉ gọi skill kèm local nhưng không nói “hôm nay” và không chỉ định khóa, dùng chủ đề mặc định `Khóa học tin học văn phòng tại [LOCAL]`.
- Nếu user nói `tạo cho tôi bài hôm nay`, `hôm nay đăng gì`, `làm bài map hôm nay` hoặc câu tương đương, không khóa cứng vào Tin học văn phòng: phải nghiên cứu khóa học, ưu đãi hoặc sự kiện phù hợp nhất với local và đúng loại bài của tuần.
- Nếu user đưa nhiều địa phương, tạo một bộ độc lập cho từng địa phương.
- Nếu user không đưa địa phương nào, hỏi đúng một câu ngắn để lấy local trước khi nghiên cứu hoặc render.
- Không tạo nội dung Tiếng Hoa/Tiếng Trung và không dùng `hoctienghoabinhduong.vn`.
- Footer của mọi ảnh luôn chỉ có đúng dòng chữ `TIN HỌC SAO VIỆT`. Không thêm local vào footer.
- Local vẫn phải xuất hiện tự nhiên trong headline ảnh, caption và tiêu đề Google Maps khi loại bài có tiêu đề.

## Xử lý yêu cầu “bài hôm nay”

1. Lấy local từ câu hiện tại; nếu không có, dùng local đã được xác định rõ trong ngữ cảnh hội thoại hoặc cấu hình chi nhánh đang làm. Không suy đoán local từ một địa chỉ mơ hồ.
2. Nếu vẫn chưa xác định được local, hỏi đúng một câu ngắn để lấy địa phương.
3. Xác định loại bài của tuần trước khi tìm nguồn: `Cập nhật`, `Ưu đãi` hoặc `Sự kiện`.
4. Tìm ứng viên đúng loại bài và đúng local trên cả hai website. Ưu tiên nội dung mới, chưa đăng và có đủ dữ liệu để viết chính xác.
5. Chỉ fallback sang khóa/trang chung khi không có ứng viên local phù hợp; phải ghi rõ lý do fallback trong `bai-mo-ta.md`.

Thứ tự chọn theo loại bài:

- `Cập nhật`: khóa học hoặc bài kiến thức phù hợp local → khóa Office/Tin học văn phòng phù hợp local → khóa học chung phù hợp nhu cầu người học tại local.
- `Ưu đãi`: ưu đãi thật gắn local và khóa học → ưu đãi thật của khóa phù hợp local → nếu website không có ưu đãi phù hợp thì dùng mức giảm 10% đã được user duyệt cho khóa được chọn, tuyệt đối không tự thêm mã/quà/điều kiện.
- `Sự kiện`: sự kiện/khai giảng có local và đủ lịch thật → sự kiện khóa học phù hợp local có đủ lịch thật. Không có đủ ngày và giờ bắt đầu/kết thúc thì dừng và hỏi user, không đổi thành sự kiện tự đặt.

## Chu kỳ loại bài

Giữ chu kỳ tuần lịch tại múi giờ `Asia/Bangkok`:

1. Tuần 1: `Cập nhật`.
2. Tuần 2: `Ưu đãi` — mặc định giảm 10% học phí cho khóa đã chọn.
3. Tuần 3: `Sự kiện` — góc khai giảng, nhưng chỉ được làm khi có lịch bắt đầu/kết thúc thật.
4. Sau đó lặp lại `Cập nhật → Ưu đãi → Sự kiện`.

Rà `image/**/bai-mo-ta.md` gần nhất để xác định tuần chu kỳ. Cùng một tuần lịch giữ nguyên loại bài. Chỉ định rõ của user ghi đè chu kỳ và trở thành mốc mới. Đọc [references/google-maps-post-types.md](references/google-maps-post-types.md) trước khi viết trường nội dung.

Nếu tuần hiện tại là Sự kiện nhưng chưa có đủ ngày và giờ bắt đầu/kết thúc đáng tin cậy, dừng trước khi render và hỏi user; không tự đặt lịch.

## Nghiên cứu khóa học và deep link

Đây là bước bắt buộc trước khi viết caption hoặc prompt ảnh.

1. Quét toàn bộ `image/**/bai-mo-ta.md` để lập tập URL và chủ đề đã dùng. Chuẩn hóa URL bằng cách bỏ fragment, bỏ `utm_*`, viết thường host và bỏ dấu `/` cuối.
2. Tìm trên cả hai domain:
   - `https://blogdaytinhoc.com/`
   - `https://tinhocsaoviet.com/`
3. Với mỗi domain, tìm theo local và loại bài hiện tại. Bao gồm các truy vấn tương đương `[LOẠI BÀI] [LOCAL]`, `khóa học [LOCAL]`, `khai giảng [LOCAL]`, `ưu đãi khóa học [LOCAL]`, `khóa học tin học văn phòng [LOCAL]`, cùng biến thể địa danh hợp lý. Chỉ dùng truy vấn sự kiện/ưu đãi khi loại bài hoặc yêu cầu thực sự cần.
4. Mở trang ứng viên và đọc nội dung thật. Không chọn chỉ dựa trên slug hoặc snippet.
5. Xếp hạng ứng viên theo: đúng loại bài → đúng local → đúng khóa/chủ đề → dữ liệu đầy đủ → mới và chưa đăng. Với yêu cầu Tin học văn phòng cụ thể, giữ thứ tự: Tin học văn phòng + local → Office + local → Tin học văn phòng chung → Office chung.
6. Một trang có local nhưng sai loại bài hoặc sai chủ đề không được ưu tiên hơn trang chung đúng nội dung cần viết.
7. Không dùng trang chủ, trang tìm kiếm, URL đoán, URL không mở được hoặc URL đã dùng trong lịch sử khi còn ứng viên mới phù hợp.

Ghi trong `bai-mo-ta.md`: hai domain đã tìm, URL được chọn, trang có khớp local hay dùng fallback khóa chung, và lý do chọn. Nếu không tìm thấy deep link liên quan trên cả hai domain, dừng và báo thiếu nguồn.

## Nội dung theo local

- Tên khóa cuối cùng phải dựa trên trang đã mở, không tự chế chương trình học.
- Caption khoảng 380–650 ký tự, tối đa 1.500 ký tự; dùng plain text để dán vào Google Maps/Facebook/Zalo.
- Không dùng Markdown link, bold/italic, code fence hoặc blockquote.
- Không thêm hashtag vào caption hoặc khối field-ready của bất kỳ loại bài nào.
- Nội dung phải nhắc đúng local và chỉ nêu chương trình, kỹ năng, ưu đãi hoặc lịch sự kiện có cơ sở từ trang đã chọn. Với bài Tin học văn phòng, có thể liên hệ Word, Excel, PowerPoint, xử lý dữ liệu, báo cáo hoặc công việc hành chính khi nguồn hỗ trợ các ý đó.
- Không tự thêm hotline, địa chỉ, học phí, chứng chỉ, cam kết đầu ra, quà tặng hoặc lịch học.
- Khi tạo nhiều local trong một lượt, caption và ảnh phải khác góc kể, hook, CTA, nhóm visual và layout; không nhân bản một mẫu rồi thay địa danh.

## Ảnh

- Trước khi chọn bố cục, đọc [references/image-layouts.md](references/image-layouts.md). Rà 2 batch gần nhất của cùng local nếu có và chọn layout khác; khi làm nhiều local cùng lúc, không dùng trùng layout chính.
- Dùng duy nhất ChatGPT `image_gen` để tạo artwork. Không dùng PIL, HTML/CSS, Canva-like renderer hoặc script để tự vẽ ảnh; chỉ được resize ảnh image_gen về kích thước cuối.
- Kích thước cuối luôn `1280x960`, tỉ lệ 4:3 landscape.
- Lập Text Manifest trước khi render; liệt kê nguyên văn mọi chữ sẽ xuất hiện.
- Headline phải phản ánh nội dung đã chọn và có local. Với yêu cầu Tin học văn phòng, cấu trúc mặc định tương đương `TIN HỌC VĂN PHÒNG TẠI [LOCAL]`; với “bài hôm nay”, dùng tên khóa/ưu đãi/sự kiện thật đã xác minh.
- Footer text-only cố định: `TIN HỌC SAO VIỆT`.
- Không logo, ngôi sao, huy hiệu, monogram, favicon, QR code, watermark hoặc biểu tượng thương hiệu ở bất kỳ vị trí nào.
- Mọi prompt phải chứa nguyên câu: `All Vietnamese text must be rendered with full, correct Vietnamese diacritics (dấu thanh + dấu mũ/móc). Do NOT omit, simplify, romanize, or alter any diacritical marks.`
- Mọi prompt phải chứa: `Footer is text-only and must read exactly “TIN HỌC SAO VIỆT”. Do not include any logo, emblem, star mark, badge, monogram, or brand icon anywhere.`
- Hình minh họa phải liên quan trực tiếp tới Office/tin học văn phòng và chủ đề trang đã chọn; tránh chữ giả trong màn hình, sách, bảng hoặc nền.

## Output

Với mỗi local, lưu riêng để không xung đột giữa 13 chi nhánh:

```text
image/<YYYY-MM-DD>/<local-slug>/
  bai-map-<local-slug>.png
  bai-mo-ta.md
```

Nếu file đã tồn tại, không ghi đè im lặng; thêm hậu tố `-02`, `-03`.

Phần đầu `bai-mo-ta.md` phải có:

```text
LOCAL: [ĐỊA PHƯƠNG]
YÊU CẦU: [TIN HỌC VĂN PHÒNG | BÀI HÔM NAY | KHÓA USER CHỈ ĐỊNH]
CHỦ ĐỀ ĐÃ CHỌN: [KHÓA HỌC | ƯU ĐÃI | SỰ KIỆN]
LOẠI BÀI GOOGLE MAPS: [CẬP NHẬT | ƯU ĐÃI | SỰ KIỆN]
TUẦN CHU KỲ: [1 | 2 | 3]
TUẦN ÁP DỤNG: [DD/MM/YYYY] - [DD/MM/YYYY]
MÚI GIỜ: Asia/Bangkok
HAI DOMAIN ĐÃ TÌM: blogdaytinhoc.com; tinhocsaoviet.com
MỨC KHỚP NGUỒN: [ĐÚNG LOẠI BÀI + LOCAL | ĐÚNG KHÓA + LOCAL | KHÓA OFFICE + LOCAL | NGUỒN CHUNG]
URL ĐÃ MỞ VÀ XÁC MINH: [URL]
KIỂM TRA TRÙNG URL: [KẾT QUẢ]
```

Sau đó ghi đúng một khối field-ready theo schema loại bài. Trường `CHI NHÁNH` dùng local user cung cấp để người đăng nhận diện map; footer ảnh vẫn luôn là `TIN HỌC SAO VIỆT`.

## QA bắt buộc

- Đã tìm trên cả hai website và mở URL được chọn.
- Với yêu cầu “bài hôm nay”, đã so sánh ứng viên khóa học/ưu đãi/sự kiện đúng loại bài và ưu tiên nguồn gắn local; nếu fallback nguồn chung, đã ghi rõ không có ứng viên local phù hợp hơn.
- URL không trùng lịch sử sau chuẩn hóa.
- Đủ trường của loại bài; tiêu đề Ưu đãi/Sự kiện không quá 58 ký tự, mô tả không quá 1.500 ký tự.
- Caption và khối field-ready không có hashtag.
- Với bài Ưu đãi, ngày bắt đầu là ngày tạo bài và ngày kết thúc là đúng 7 ngày sau theo múi giờ `Asia/Bangkok`.
- Ảnh đúng 1280x960; local, tên khóa, mức giảm/lịch và CTA khớp caption.
- Mở và đọc 100% ảnh ở kích thước đủ lớn. Mọi chữ đúng chính tả và dấu tiếng Việt, không bị cắt, không có chữ AI thừa hoặc mojibake.
- Footer đúng duy nhất `TIN HỌC SAO VIỆT`, text-only, không local và không logo/icon.
- Chỉ báo hoàn tất khi ảnh PASS toàn bộ. Nếu chỉ chuẩn bị prompt chưa render, ghi `QA ảnh: CHƯA THỰC HIỆN — chưa render`.

## Báo cáo cuối

Nêu local, khóa/trang đã chọn, mức khớp nguồn, loại bài và tuần áp dụng, hai domain đã tìm, kết quả chống trùng, đường dẫn ảnh/caption, kích thước ảnh và xác nhận footer cố định `TIN HỌC SAO VIỆT`.
