# Quy tắc Footer — Sao Việt

## Footer trong Prompt tạo ảnh

Footer CHỈ hiển thị tên brand. KHÔNG bao gồm:
- Địa chỉ chi nhánh
- Hotline / số điện thoại
- Email
- QR code

### Ví dụ footer đúng:

| Page | Footer |
|------|--------|
| Tin Học Sao Việt | "TRUNG TÂM TIN HỌC SAO VIỆT" |
| AutoCAD Sao Việt | "TRUNG TÂM ĐÀO TẠO AUTOCAD SAO VIỆT" |
| Kế Toán Sao Việt | "TRUNG TÂM ĐÀO TẠO KẾ TOÁN SAO VIỆT" |
| Đồ Họa Sao Việt | "TRUNG TÂM THIẾT KẾ ĐỒ HỌA SAO VIỆT" |

Nếu user chọn/nhắc local/chi nhánh, footer ảnh dùng tên brand gắn local nhưng vẫn KHÔNG hiện địa chỉ/hotline/email.

Ví dụ chọn Thuận An:
- Tin Học Sao Việt: "TRUNG TÂM TIN HỌC SAO VIỆT THUẬN AN"
- AutoCAD Sao Việt: "TRUNG TÂM ĐÀO TẠO AUTOCAD SAO VIỆT THUẬN AN"
- Kế Toán Sao Việt: "TRUNG TÂM ĐÀO TẠO KẾ TOÁN SAO VIỆT THUẬN AN"
- Đồ Họa Sao Việt: "TRUNG TÂM THIẾT KẾ ĐỒ HỌA SAO VIỆT THUẬN AN"

### Ví dụ footer SAI (KHÔNG dùng):

- "TRUNG TÂM ĐÀO TẠO AUTOCAD SAO VIỆT — 📍 [ĐỊA CHỈ CHI NHÁNH]"
- "TRUNG TÂM TIN HỌC SAO VIỆT — ☎ 093 11 44 858"
- "TRUNG TÂM ĐÀO TẠO KẾ TOÁN SAO VIỆT — Cơ sở 1 · Cơ sở 2 · Cơ sở 3"

## Footer trong Bài đăng Facebook

Cuối mỗi bài đăng gồm:

```
📍 [TÊN BRAND GẮN LOCAL nếu user chọn/nhắc chi nhánh]
🏫 Địa chỉ: [ĐỊA CHỈ CHI NHÁNH nếu user chọn/nhắc chi nhánh]

📞 Hotline/Zalo: 0911 639 848
📧 Email: trungtamtinhocsaoviet@gmail.com

#hashtags
```

Địa chỉ là bắt buộc khi user chọn/nhắc chi nhánh cụ thể. Lấy đúng địa chỉ từ `references/brand-info.md`.
Tên brand gắn local cũng là bắt buộc khi user chọn/nhắc chi nhánh cụ thể. Lấy local label từ `references/brand-info.md`.

Nếu user không chọn chi nhánh, không tự liệt kê cả hệ thống địa chỉ. Có thể bỏ dòng địa chỉ hoặc hỏi lại chi nhánh khi địa chỉ là thông tin bắt buộc. Không đưa địa chỉ vào footer ảnh.

## Prompt template — Avoid list (luôn thêm)

Trong mọi prompt tạo ảnh, mục Avoid PHẢI bao gồm:
- watermark
- QR code
- hotline
- address
- human figures
