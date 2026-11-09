# Hệ thiết kế Carousel Sao Việt — v1.6.0

Đây là nguồn hiện hành cho tọa độ, mật độ, tone mặc định và QA. Mọi tọa độ/palette cũ trong 19 template chỉ còn giá trị tham khảo cấu trúc.

## Profile TikTok dọc

Canvas 1080×1920, tỷ lệ 9:16.

| Thành phần | Tọa độ |
| --- | --- |
| Envelope dự phòng | X90–930, Y250–1640 |
| Working zone | X120–920, Y280–1580 |
| Cột chính | X160–920, tâm X540 |
| Số trang | X790–900, Y290–350 |
| Headline gợi ý | Y420–610 |
| Nội dung chính | Y640–1500 |
| CTA | Y1390–1500 khi có |
| Footer cover/cuối | Y1530–1580 |

Đây là profile project, không phải safe zone TikTok chính thức cho mọi thiết bị. Y0–249, Y1641–1919, X0–89 và X931–1079 chỉ chứa nền/trang trí không mang nghĩa. Không co cả artwork để né UI; reflow hoặc tách nội dung. Phần tử có nghĩa cuối nên chạm khoảng Y1380–1500 để tránh bố cục bị bó giữa.

## Tone Sao Việt mặc định

Tone tham chiếu là bộ ảnh Tin học ngày 19-09-2026:

- Canvas: #FEFEFE hoặc #FFFFFF.
- Ice grouping: #E8F7FD và #D8ECFA.
- Headline: #08084F.
- Body navy: #17205F.
- Electric blue: #0878F8.
- Cyan: #00BCEB.
- Website sky: #5EB9F0.
- Yellow #FAB758 chỉ dành cho cảnh báo hoặc nhấn có ý nghĩa.

Tỷ lệ tham khảo: 60–70% trắng, 20–30% ice/pale, 5–10% màu bão hòa/navy. Cảm giác nổi bật đến từ headline navy và badge/icon/CTA xanh điện–cyan nhỏ nhưng rõ, không phải phủ mảng tối toàn khung.

Kênh Kế toán, Đồ họa hoặc chiến dịch có palette riêng được thay hue, nhưng phải giữ cấu trúc tương phản: nền sáng chiếm ưu thế, chữ chính đủ đậm, ít nhất một điểm neo bão hòa. Không ép tone 19-09 nếu user đã cung cấp nhận diện khác.

## Mật độ và cấu trúc

- Một slide có một điểm neo chính, tối đa hai module lớn.
- Headline 1–2 dòng; body tối đa 2–3 câu ngắn hoặc 3–5 ý.
- Bài ngắn 3–4 slide, bài trung bình 5–6, bài dài 7–9; không quota tối thiểu.
- Cover và recap không cần screenshot nếu ảnh phần mềm không thêm giá trị.
- Không để CTA/footer cách xa nội dung chỉ để lấp trống.

## Ảnh thật và UI

- Bài hướng dẫn tab/nút/menu phải dùng UI thật.
- Nếu tài liệu/giáo trình user cung cấp có ảnh đúng và rõ, crop trực tiếp; giữ mũi tên/highlight đúng có sẵn.
- Nếu nguồn thiếu/mờ, mở phần mềm có sẵn, thao tác và chụp thật.
- Nếu phần mềm không có, dùng nguồn chính thức hoặc chuyển sang minh họa khái niệm; không giả UI.
- Screenshot chỉ crop/scale đồng tỷ lệ, che riêng tư, đóng khung và thêm callout khi cần. Không recolor, sửa chữ/icon hay vị trí nút.
- ImageGen thiết kế artwork thực tế và khung chờ; UI thật được ghép sau.

## QA bắt buộc

1. Mở từng ảnh cuối ở kích thước đủ đọc; đối chiếu Text Manifest.
2. Kiểm tra 1080×1920, không méo, không tràn working zone.
3. Xem bản 360×640 và 390×693.
4. Mở overlay geometry và contact sheet.
5. Chạy SHOT DISTINCTNESS: hai slide liên tiếp không được dùng cùng screenshot/crop mà chỉ thay tiêu đề.
6. Chạy VIVIDNESS GATE: headline rõ và có điểm neo màu bão hòa; tone mặc định phải nhận ra xanh điện/cyan.
7. Backup trước khi thay bản đã có; chỉ đưa candidate đạt vào image/.
8. Chưa xem trong ứng dụng TikTok thì ghi: ĐẠT QA TĨNH — CHƯA KIỂM TRA PREVIEW TIKTOK.

