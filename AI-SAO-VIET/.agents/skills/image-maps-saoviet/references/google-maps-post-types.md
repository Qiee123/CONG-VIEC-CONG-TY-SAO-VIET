# Schema bài đăng Google Maps — một local

Đọc sau khi xác định loại bài trong tuần. Mỗi local tạo đúng một khối nội dung và một ảnh tương ứng.

## Quy tắc chung

- Mô tả tối đa 1.500 ký tự.
- Tiêu đề Ưu đãi/Sự kiện bắt buộc và tối đa 58 ký tự.
- Ngày giờ dùng múi giờ `Asia/Bangkok`.
- Dữ liệu để dán vào biểu mẫu phải là plain text.
- Không thêm hashtag vào mô tả hoặc bất kỳ trường field-ready nào.
- Không tự tạo học phí, ưu đãi, mã giảm giá, điều khoản, lịch khai giảng hoặc cam kết.
- `CHI NHÁNH` ghi local user cung cấp. Footer ảnh độc lập với trường này và luôn là `TIN HỌC SAO VIỆT`.

## Cập nhật

```text
CHI NHÁNH: [LOCAL]
LOẠI BÀI: CẬP NHẬT
MÔ TẢ:
[NỘI DUNG]
NÚT CTA: Tìm hiểu thêm
ĐƯỜNG LIÊN KẾT CỦA NÚT: [DEEP LINK ĐÃ MỞ VÀ XÁC MINH]
```

Không thêm tiêu đề, ngày, điều khoản hoặc mã giảm giá.

## Ưu đãi

Mặc định giảm 10% học phí cho đúng khóa đã chọn.

Với mọi bài Ưu đãi, cửa sổ ngày của bài Google Maps được tính theo ngày tạo bài tại múi giờ `Asia/Bangkok`:

- `NGÀY BẮT ĐẦU` là ngày tạo bài, thời gian `00:00`.
- `NGÀY KẾT THÚC` là ngày đúng 7 ngày sau ngày tạo bài, thời gian `23:59`.
- Không kéo ngày bắt đầu lùi về Thứ Hai và không chốt ngày kết thúc ở Chủ Nhật của tuần lịch.
- Nếu ưu đãi thật từ website không còn hiệu lực trọn cửa sổ 7 ngày này, không kéo dài ưu đãi đó. Chọn ưu đãi khác đủ hiệu lực hoặc dùng mức giảm 10% mặc định đã được user duyệt.

Nếu hai website có ưu đãi thật phù hợp với local và còn hiệu lực, ưu tiên dùng đúng mức giảm, thời hạn và điều khoản đã xác minh từ nguồn đó. Chỉ dùng mặc định 10% khi không có ưu đãi nguồn phù hợp và mức mặc định này vẫn nằm trong chỉ định hiện hành của user. Không trộn dữ liệu của hai ưu đãi khác nhau.

```text
CHI NHÁNH: [LOCAL]
LOẠI BÀI: ƯU ĐÃI
TIÊU ĐỀ: [TỐI ĐA 58 KÝ TỰ]
MÔ TẢ:
[NỘI DUNG]
NGÀY BẮT ĐẦU: [NGÀY TẠO BÀI — DD/MM/YYYY]
THỜI GIAN BẮT ĐẦU: 00:00
NGÀY KẾT THÚC: [NGÀY TẠO BÀI + 7 NGÀY — DD/MM/YYYY]
THỜI GIAN KẾT THÚC: 23:59
LẶP LẠI: Không lặp lại
ĐIỀU KHOẢN: Giảm 10% học phí khóa [TÊN KHÓA] khi đăng ký tại chi nhánh [LOCAL] trong thời gian nêu trên.
MÃ GIẢM GIÁ: Không có
ĐƯỜNG LIÊN KẾT ĐỂ SỬ DỤNG ƯU ĐÃI: [DEEP LINK ĐÃ MỞ VÀ XÁC MINH]
```

Không tự thêm quà tặng, số lượng giới hạn hoặc điều kiện cộng dồn.

## Sự kiện

Chỉ tạo khi có lịch thật và đủ bốn trường ngày/giờ.

Ưu tiên sự kiện/khai giảng gắn đúng local. Nếu trang sự kiện chung nhưng khóa học phù hợp local, chỉ dùng khi trang có đủ lịch thật và caption không tuyên bố sai rằng sự kiện được tổ chức tại local.

```text
CHI NHÁNH: [LOCAL]
LOẠI BÀI: SỰ KIỆN
TIÊU ĐỀ: [TỐI ĐA 58 KÝ TỰ]
MÔ TẢ:
[NỘI DUNG]
NGÀY BẮT ĐẦU: [DD/MM/YYYY ĐÃ XÁC MINH]
THỜI GIAN BẮT ĐẦU: [HH:MM ĐÃ XÁC MINH]
NGÀY KẾT THÚC: [DD/MM/YYYY ĐÃ XÁC MINH]
THỜI GIAN KẾT THÚC: [HH:MM ĐÃ XÁC MINH]
LẶP LẠI: Không lặp lại
NÚT CTA: Tìm hiểu thêm
ĐƯỜNG LIÊN KẾT CỦA NÚT: [DEEP LINK ĐÃ MỞ VÀ XÁC MINH]
```

Thiếu lịch thật thì dừng trước khi render và hỏi user.
