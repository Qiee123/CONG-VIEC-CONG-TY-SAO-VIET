# Cấu trúc Bài đăng Facebook — Sao Việt

## Plain text khi xuất bài đăng

Phần bài viết/caption trong `Baidang.md` phải copy được lên Facebook/Zalo ngay.

- Không chèn dấu Markdown để in đậm/in nghiêng: xoá `**`, `__`, `*`, `_` bao quanh từ khóa.
- Không dùng dấu heading Markdown `#`, `##`, `###` trong nội dung bài viết đăng Facebook.
- Nếu cần nhấn mạnh, viết HOA, thêm emoji, xuống dòng hoặc dùng dấu gạch đầu dòng.
- Trước khi kết thúc, quét file và xoá hết cặp `**` còn sót trong phần bài đăng.

## Thư viện thành phần bài đăng

Đây là menu thành phần, KHÔNG phải khung bắt buộc dùng đủ hoặc theo một thứ tự cố định. Chọn các phần phù hợp với dạng bài đã chọn (mini case, checklist, mẹo nhanh, FAQ, quiz, lộ trình, tuyển sinh...), thay đổi thứ tự và độ dài để 4 bài không cùng skeleton. Footer vẫn luôn đặt cuối bài.

### 1. Hook mở đầu
- Bắt đầu bằng emoji 🔵
- Câu hook gây chú ý, gắn chuyên môn của page + bối cảnh Sao Việt. Với page chính Tin Học Sao Việt, hook có thể xoay linh động qua mọi ngành/khoá trong danh mục, không bị giới hạn vào tin học văn phòng.
- Hoặc headline viết HOA nổi bật

### 2. Thực trạng / Nhu cầu
- Bắt đầu bằng 📍
- Liệt kê nhu cầu thực tế của học viên theo chuyên môn page
- Dùng ✔️ cho từng item

### 3. Vấn đề / Khó khăn
- Bắt đầu bằng 📌
- Liệt kê khó khăn khi tự học / chưa có kỹ năng
- Dùng ❌ cho items tiêu cực

### 4. Giới thiệu khóa học
- Bắt đầu bằng 🚀
- Tên khóa học viết HOA để nhấn mạnh, nhưng KHÔNG dùng dấu Markdown bôi đậm như `**`
- 💻 cho mỗi đặc điểm khóa học, hoặc ✅ cho bullet points

### 5. Nội dung khóa học
- Bắt đầu bằng 📌
- Liệt kê các module/kỹ năng được dạy theo chuyên môn page
- Dùng emoji phù hợp (📐 AutoCAD, 📊 Kế toán, 🎨 Đồ họa, 💻 Tin học...)

### 6. Ưu điểm
- Bắt đầu bằng 🎯
- Dùng 👉 cho từng ưu điểm (học thực hành, học 1 kèm 1/nhóm nhỏ, giáo viên kinh nghiệm, học lại miễn phí...)

### 7. Kết quả
- Bắt đầu bằng 📈
- Dùng ✔️ cho từng kết quả (làm được việc thực tế, đi làm/đổi nghề, có chứng chỉ...)

### 8. Thông điệp kết
- Bắt đầu bằng 📌
- 1-2 câu ý nghĩa, truyền cảm hứng

### 9. Lời mong muốn
- Bắt đầu bằng 🤝 + tên brand
- 3-4 dòng bắt đầu bằng -->

### 10. Footer cuối bài
```
📍 [TÊN BRAND GẮN LOCAL nếu user chọn/nhắc chi nhánh]
🏫 Địa chỉ: [ĐỊA CHỈ CHI NHÁNH nếu user chọn/nhắc chi nhánh]

📞 Hotline/Zalo: 0911 639 848
📧 Email: trungtamtinhocsaoviet@gmail.com

#hashtags
```

## Quy tắc adapt theo page (bám khối khoá trong `brand-info.md`)

| Page | Khoá thường đăng | Đặc thù cần adapt |
|------|------------------|--------------------|
| Tin Học Sao Việt (PAGE TỔNG — mọi khoá) | Word, Excel, Máy tính, PowerPoint, MOS, IC3, AI Agents, Ứng dụng AI cho công việc, Python/Scratch cho trẻ em (và có thể bất kỳ khoá nào) | Dân văn phòng/nhân viên KCN, người đi làm, học sinh; luân phiên khoá theo ngày |
| AutoCAD Sao Việt | AutoCAD 2D/3D, SolidWorks, SketchUp, 3Ds Max + Vray, Thiết kế nội thất | Bản vẽ kỹ thuật, mô hình 3D, ngành cơ khí/xây dựng/nội thất, kỹ sư & sinh viên kỹ thuật, đi làm được ngay |
| Kế Toán Sao Việt | Kế toán thực hành | Chứng từ - báo cáo thuế, phần mềm kế toán/Excel, người làm & học kế toán, chủ DN nhỏ |
| Đồ Họa Sao Việt | Photoshop, Illustrator, CorelDraw | Portfolio, làm designer/marketing/in ấn, freelancer |

## Phân luồng nội dung theo page

- Tin Học Sao Việt là page chính/page tổng: đăng được toàn bộ khoá trong brand-info.md, gồm tin học văn phòng, AI, chứng chỉ MOS/IC3, CAD/3D, kế toán, đồ họa, lập trình trẻ em. Khi user không chỉ định khoá, tự chọn linh động dựa trên lịch gần đây và tránh trùng ngành quá nhiều ngày.
- AutoCAD Sao Việt chỉ đăng nhóm kỹ thuật/CAD/3D: AutoCAD 2D, AutoCAD 3D, SolidWorks, SketchUp, 3Ds Max + Vray, Thiết kế nội thất.
- Kế Toán Sao Việt chỉ đăng Kế toán thực hành và các góc nội dung kế toán như chứng từ, thuế, công nợ, lương, kho, phần mềm kế toán.
- Đồ Họa Sao Việt chỉ đăng Photoshop, Illustrator, CorelDraw và các góc nội dung thiết kế bài đăng, banner, in ấn, portfolio.
- Nếu user nêu một khoá thuộc page chuyên môn, page chuyên môn đó dùng khoá được nêu; page chính cũng có thể đăng cùng khoá hoặc một góc tổng quan khác. Các page không liên quan vẫn chọn khoá đúng ngành của mình.

## Icon/emoji nên dùng theo ngành

| Ngành | Icon trong bài đăng |
|-------|---------------------|
| Tin học văn phòng | 💻 📊 🧾 ✅ ⏱️ |
| AI | 🤖 ⚡ 🧠 ✨ 🚀 |
| CAD/3D | 📐 🏗️ 🧱 🛠️ 📏 |
| Kế toán | 📊 🧾 💼 💰 📌 |
| Đồ họa | 🎨 🖌️ 🖼️ ✂️ ✨ |
| Lập trình trẻ em | 🧩 💡 👩‍💻 👨‍💻 🚀 |

## Địa chỉ trong bài đăng

- Nếu user chọn/nhắc local/chi nhánh, tên brand cuối bài phải gắn local theo `brand-info.md`.
- Ví dụ Thuận An: `TRUNG TÂM TIN HỌC SAO VIỆT THUẬN AN`, `TRUNG TÂM ĐÀO TẠO AUTOCAD SAO VIỆT THUẬN AN`, `TRUNG TÂM ĐÀO TẠO KẾ TOÁN SAO VIỆT THUẬN AN`, `TRUNG TÂM THIẾT KẾ ĐỒ HỌA SAO VIỆT THUẬN AN`.
- Nếu user chọn/nhắc chi nhánh nào, PHẢI lấy đúng địa chỉ trong `brand-info.md` và thêm vào cuối bài đăng.
- Dòng địa chỉ đặt ngay sau tên brand và trước hotline/email:
  `🏫 Địa chỉ: [địa chỉ chi nhánh]`
- Nếu user yêu cầu nhiều chi nhánh, tạo bài riêng cho từng chi nhánh hoặc thêm đúng danh sách ngắn các chi nhánh được chọn. Không tự liệt kê cả 13 địa chỉ khi user không yêu cầu.
- Nếu user không chọn chi nhánh, không tự đưa địa chỉ vào footer; có thể hỏi lại chi nhánh nếu địa chỉ là thông tin bắt buộc.
- Không đưa địa chỉ vào prompt ảnh/footer ảnh.

## Tên brand trong prompt ảnh

- Footer ảnh vẫn không có địa chỉ/hotline/email.
- Nếu user chọn/nhắc local/chi nhánh, footer ảnh nên dùng tên brand gắn local, ví dụ: `TRUNG TÂM TIN HỌC SAO VIỆT THUẬN AN`.
- Nếu chưa chọn local, dùng tên brand tổng chung.

## Hashtag theo page

| Page | Hashtags |
|------|----------|
| Tin Học Sao Việt | #tinhocsaoviet #tinhocvanphong #saoviet + hashtag khóa học |
| AutoCAD Sao Việt | #tinhocsaoviet #autocad #vekythuat #saoviet + hashtag khóa học |
| Kế Toán Sao Việt | #tinhocsaoviet #ketoan #ketoanthuchanh #saoviet + hashtag khóa học |
| Đồ Họa Sao Việt | #tinhocsaoviet #thietkedohoa #photoshop #illustrator #saoviet + hashtag khóa học |

## Quy tắc copy Facebook/Zalo

- Viết bài đăng bằng plain text để copy trực tiếp sang Facebook/Zalo.
- Không dùng Markdown bôi đậm/nghiêng: không có dấu `**`, `__`, `*...*` hoặc `_..._` trong phần nội dung bài đăng.
- Muốn nhấn mạnh thì dùng chữ HOA vừa phải, emoji, xuống dòng, bullet thường hoặc câu ngắn.

## Tính xác thực nội dung

- Không tự tạo học phí, ngày khai giảng, ưu đãi, phần trăm hiệu quả, cam kết việc làm, loại chứng chỉ được cấp, tên học viên hay lời chứng thực.
- Chỉ dùng số liệu, lịch, tên người, feedback và chính sách khi user hoặc dữ liệu trong project đã cung cấp rõ ràng.
- Khi thiếu dữ kiện, dùng lợi ích định tính, ví dụ tình huống giả định được ghi rõ là ví dụ, và CTA liên hệ để được tư vấn.
## Giọng văn

- Chuyên nghiệp nhưng gần gũi
- Không quá quảng cáo, không "bán hàng cứng"
- Tập trung vào giá trị thực tế cho học viên (làm được nghề, đi làm, đổi đời)
- Dùng ví dụ cụ thể nhưng không bịa số liệu; chỉ nêu dự án thật hoặc tỷ lệ hiệu quả khi có dữ liệu nguồn xác nhận
- Luôn kết bằng lời mong muốn tích cực
