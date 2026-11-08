# 📘 Đề Xuất Viết Lại Giáo Trình THVP02 — Excel Nâng Cao 1

> [!NOTE]
> Dựa trên phân tích giáo trình hiện tại (33 trang), tài liệu này đề xuất cách mô tả chi tiết hơn từng hàm và chủ đề để học viên tự học được, giáo viên không phải giải thích lại nhiều lần.

---

## 🔍 Nhận xét Giáo Trình Hiện Tại

| Điểm mạnh | Điểm cần cải thiện |
|---|---|
| Có cấu trúc rõ ràng theo chương | Phần cú pháp quá ngắn, chỉ liệt kê bullet |
| Mỗi bài có ví dụ thực tế | Không giải thích **từng tham số** của hàm |
| Hình ảnh minh họa (hình ảnh không trích được) | Thiếu bảng so sánh giữa các hàm liên quan |
| Mục đích nghiên cứu ngắn gọn | Không có mục "Lỗi thường gặp" |
| | Không có phần "Câu hỏi ôn tập" từng bài |
| | Phần COUNTIF, SUMIF, SUMIFS, SUMPRODUCT gần như trống (chỉ có "Ví dụ: 👉") |

---

## 🏗️ Đề Xuất Cấu Trúc Mỗi Bài

Mỗi bài học nên có **8 phần** theo thứ tự sau:

```
1. Mục đích (tại sao cần học hàm này)
2. Cú pháp đầy đủ (syntax)
3. Giải thích từng tham số
4. Bảng tóm tắt hành vi hàm
5. Ví dụ minh họa (từ đơn giản → phức tạp)
6. So sánh với hàm liên quan
7. Lỗi thường gặp & cách khắc phục
8. Câu hỏi / bài tập tự luyện
```

---

## ✍️ Ví Dụ Viết Lại Từng Bài

---

### 📌 BÀI 01 — HÀM AND

#### 1. Mục Đích
Hàm `AND` kiểm tra **đồng thời nhiều điều kiện**. Chỉ trả về `TRUE` khi **tất cả** điều kiện đều đúng. Thường dùng lồng bên trong `IF` khi bài toán yêu cầu nhiều điều kiện phải thỏa mãn cùng lúc.

#### 2. Cú Pháp
```excel
=AND(điều_kiện_1, điều_kiện_2, ...)
```

#### 3. Giải Thích Từng Tham Số

| Tham số | Bắt buộc? | Mô tả |
|---|---|---|
| `điều_kiện_1` | ✅ Có | Phép so sánh đầu tiên cần kiểm tra (ví dụ: `A1>5`, `B1="Nam"`) |
| `điều_kiện_2` | ⚠️ Tùy chọn | Phép so sánh thứ hai. Có thể thêm tối đa **255 điều kiện** |
| `...` | ⚠️ Tùy chọn | Tiếp tục thêm các điều kiện khác |

#### 4. Bảng Tóm Tắt Hành Vi

| Điều kiện 1 | Điều kiện 2 | Kết quả AND |
|:-----------:|:-----------:|:-----------:|
| TRUE | TRUE | **TRUE** ✅ |
| TRUE | FALSE | FALSE ❌ |
| FALSE | TRUE | FALSE ❌ |
| FALSE | FALSE | FALSE ❌ |

> [!TIP]
> **Ghi nhớ nhanh:** AND = "Tất cả đều đúng mới đúng". Chỉ cần **1 điều kiện sai là sai hết**.

#### 5. Ví Dụ Minh Họa

**Ví dụ 1 — Cơ bản:** Kiểm tra học sinh có điểm Toán ≥ 5 VÀ điểm Văn ≥ 5
```excel
=AND(B2>=5, C2>=5)
→ Trả về TRUE nếu cả Toán và Văn đều ≥ 5
```

**Ví dụ 2 — Lồng vào IF:** Xét học viên đủ điều kiện nhận chứng chỉ (điểm ≥ 5 VÀ chuyên cần ≥ 80%)
```excel
=IF(AND(D2>=5, E2>=80%), "Đạt", "Không đạt")
→ Chỉ in "Đạt" khi CẢ HAI điều kiện đều thỏa
```

**Ví dụ 3 — 3 điều kiện:** Nhân viên được thưởng khi: thâm niên ≥ 5 năm VÀ chức vụ = "Trưởng phòng" VÀ KPI ≥ 90%
```excel
=IF(AND(B2>=5, C2="Trưởng phòng", D2>=90%), 10000000, 5000000)
```

#### 6. So Sánh AND vs OR

| | AND | OR |
|---|---|---|
| Trả về TRUE khi | **Tất cả** điều kiện đúng | **Ít nhất 1** điều kiện đúng |
| Trả về FALSE khi | Có **ít nhất 1** điều kiện sai | **Tất cả** điều kiện sai |
| Dùng khi | Bài toán kiểu "phải đủ cả X lẫn Y" | Bài toán kiểu "X hoặc Y đều được" |

#### 7. Lỗi Thường Gặp

| Lỗi | Nguyên nhân | Cách Khắc Phục |
|---|---|---|
| `#VALUE!` | Điều kiện không phải dạng logic (TRUE/FALSE) | Kiểm tra lại phép so sánh |
| Kết quả luôn FALSE dù tưởng đúng | So sánh chữ có khoảng trắng thừa | Dùng `TRIM()` hoặc kiểm tra lại dữ liệu |
| Nhầm lẫn AND và dấu `*` trong mảng | Hai cách viết khác nhau | Trong công thức thường dùng AND; trong mảng (SUMPRODUCT) dùng `*` |

#### 8. Bài Tập Tự Luyện
1. Viết công thức kiểm tra học sinh loại Giỏi: điểm TB ≥ 8 **VÀ** không có môn nào dưới 6.5
2. Viết công thức xét nhân viên được tăng lương: thâm niên ≥ 3 năm **VÀ** đánh giá = "Xuất sắc" **VÀ** không vi phạm kỷ luật.

---

### 📌 BÀI 02 — HÀM OR

#### 1. Mục Đích
Hàm `OR` kiểm tra nhiều điều kiện nhưng chỉ cần **ít nhất 1 điều kiện** đúng là trả về `TRUE`. Dùng khi bài toán có dạng "điều kiện A **hoặc** điều kiện B đều được chấp nhận".

#### 2. Cú Pháp
```excel
=OR(điều_kiện_1, điều_kiện_2, ...)
```

#### 3. Giải Thích Từng Tham Số
*(Tương tự AND — tối đa 255 điều kiện)*

#### 4. Bảng Tóm Tắt Hành Vi

| Điều kiện 1 | Điều kiện 2 | Kết quả OR |
|:-----------:|:-----------:|:----------:|
| TRUE | TRUE | TRUE ✅ |
| TRUE | FALSE | **TRUE** ✅ |
| FALSE | TRUE | **TRUE** ✅ |
| FALSE | FALSE | FALSE ❌ |

> [!TIP]
> **Ghi nhớ nhanh:** OR = "Chỉ cần 1 đúng là đúng". Chỉ trả về FALSE khi **tất cả đều sai**.

#### 5. Ví Dụ Minh Họa

**Ví dụ 1:** Giảm giá 5% nếu loại sản phẩm là "Gia dụng" **hoặc** "Điện tử"
```excel
=IF(OR(B2="Gia dụng", B2="Điện tử"), 5%, 0)
```

**Ví dụ 2:** Học viên được miễn thi nếu điểm giữa kỳ ≥ 8 **hoặc** đạt chứng chỉ quốc tế
```excel
=IF(OR(C2>=8, D2="Có"), "Miễn thi", "Phải thi")
```

#### 6. Lỗi Thường Gặp
*(Tương tự AND)*

#### 7. Bài Tập Tự Luyện
1. Tính phụ cấp 2 triệu cho nhân viên có chức vụ là "Giám đốc" **hoặc** "Phó giám đốc".
2. Đánh dấu sản phẩm cần nhập thêm nếu tồn kho < 10 **hoặc** đã bán hơn 100 cái tuần trước.

---

### 📌 BÀI 05 — HÀM COUNTIF

#### 1. Mục Đích
`COUNTIF` đếm số ô trong một vùng **thỏa mãn 1 điều kiện** cho trước. Dùng để:
- Đếm số nhân viên thuộc một phòng ban
- Đếm số học sinh đạt loại Giỏi
- Kiểm tra xem giá trị có bị trùng không

#### 2. Cú Pháp
```excel
=COUNTIF(vùng_đếm, điều_kiện)
```

#### 3. Giải Thích Từng Tham Số

| Tham số | Bắt buộc? | Mô tả |
|---|---|---|
| `vùng_đếm` | ✅ Có | Vùng ô cần đếm. VD: `B2:B100`, `$C$2:$C$50` |
| `điều_kiện` | ✅ Có | Điều kiện để đếm. Có thể là: số, text, ô tham chiếu, hoặc biểu thức trong nháy kép |

#### 4. Các Dạng Điều Kiện Thường Dùng

| Muốn đếm | Viết điều kiện thế nào | Ví dụ |
|---|---|---|
| Bằng một text | `"text"` | `"Nam"`, `"Hà Nội"` |
| Bằng giá trị ô | Tham chiếu ô | `E2` |
| Lớn hơn số | `">số"` | `">5"`, `">=8"` |
| Nhỏ hơn số | `"<số"` | `"<10"` |
| Chứa chuỗi ký tự | `"*chuỗi*"` | `"*Excel*"` |
| Bắt đầu bằng | `"chuỗi*"` | `"Nguyễn*"` |

> [!IMPORTANT]
> Điều kiện so sánh (`>`, `<`, `>=`, `<=`) **bắt buộc phải đặt trong nháy kép** `""`.
> Ví dụ đúng: `">5"` — Ví dụ sai: `>5`

#### 5. Ví Dụ Minh Họa

**Ví dụ 1 — Đếm theo text:** Đếm số nhân viên thuộc phòng "Kế toán"
```excel
=COUNTIF(C2:C50, "Kế toán")
```

**Ví dụ 2 — Đếm theo điều kiện số:** Đếm số học sinh có điểm TB ≥ 8
```excel
=COUNTIF(D2:D50, ">=8")
```

**Ví dụ 3 — Dùng ô tham chiếu làm điều kiện:** Đếm theo giá trị ô F1
```excel
=COUNTIF(C2:C50, F1)
```

**Ví dụ 4 — Kiểm tra trùng:** Kiểm tra mã hàng A001 xuất hiện bao nhiêu lần
```excel
=COUNTIF(A2:A100, "A001")
→ Nếu kết quả > 1 → bị trùng
```

#### 6. So Sánh COUNTIF vs COUNTIFS

| | COUNTIF | COUNTIFS |
|---|---|---|
| Số điều kiện | 1 điều kiện | Nhiều điều kiện |
| Cú pháp | `COUNTIF(vùng, điều_kiện)` | `COUNTIFS(vùng1, đk1, vùng2, đk2, ...)` |
| Dùng khi | Đếm theo 1 tiêu chí | Đếm theo 2+ tiêu chí kết hợp |

#### 7. Lỗi Thường Gặp

| Lỗi | Nguyên nhân | Cách Khắc Phục |
|---|---|---|
| Kết quả = 0 dù có dữ liệu | Text trong ô có khoảng trắng thừa | Dùng `TRIM()` để làm sạch dữ liệu |
| Đếm sai số | Điều kiện so sánh thiếu nháy kép | Sửa `>5` thành `">5"` |
| Đếm không khớp chữ hoa/thường | COUNTIF không phân biệt hoa thường | Đây là đặc tính bình thường của Excel |

#### 8. Bài Tập Tự Luyện
1. Đếm số ngày nhân viên A đi làm đủ công trong tháng (ký hiệu "X").
2. Đếm số sản phẩm có giá bán trên 500,000đ.
3. Đếm số khách hàng có tên bắt đầu bằng "Nguyễn".

---

### 📌 BÀI 06 — HÀM COUNTIFS

#### 1. Mục Đích
`COUNTIFS` là phiên bản mở rộng của `COUNTIF`, cho phép đếm theo **nhiều điều kiện cùng lúc** (tương đương AND). Mọi điều kiện phải đồng thời thỏa mãn thì ô mới được đếm.

#### 2. Cú Pháp
```excel
=COUNTIFS(vùng_1, điều_kiện_1, vùng_2, điều_kiện_2, ...)
```

#### 3. Giải Thích Từng Tham Số

| Tham số | Bắt buộc? | Mô tả |
|---|---|---|
| `vùng_1` | ✅ Có | Vùng kiểm tra điều kiện 1 |
| `điều_kiện_1` | ✅ Có | Điều kiện áp dụng cho vùng 1 |
| `vùng_2` | ⚠️ Khi có đk2 | Vùng kiểm tra điều kiện 2 |
| `điều_kiện_2` | ⚠️ Khi có vùng2 | Điều kiện áp dụng cho vùng 2 |

> [!IMPORTANT]
> Mỗi `vùng_N` và `điều_kiện_N` phải đi thành **cặp**. Tất cả các vùng phải có **cùng kích thước** (cùng số dòng).

#### 4. Ví Dụ Minh Họa

**Ví dụ 1:** Đếm nhân viên phòng "Kinh doanh" **VÀ** giới tính "Nam"
```excel
=COUNTIFS(B2:B50, "Kinh doanh", C2:C50, "Nam")
```

**Ví dụ 2:** Đếm đơn hàng tháng 3 **VÀ** giá trị > 1,000,000đ
```excel
=COUNTIFS(D2:D100, 3, E2:E100, ">1000000")
```

**Ví dụ 3:** Đếm học sinh điểm TB từ 6.5 đến 8 (khoảng giữa)
```excel
=COUNTIFS(F2:F50, ">=6.5", F2:F50, "<=8")
→ Dùng cùng một vùng với 2 điều kiện khác nhau
```

#### 5. Bài Tập Tự Luyện
1. Đếm số ngày nhân viên A đi làm nửa công (ký hiệu "N") trong tháng 10.
2. Đếm số sản phẩm loại "Điện tử" có tồn kho dưới 20 cái.

---

### 📌 BÀI 07 — HÀM SUMIF

#### 1. Mục Đích
`SUMIF` tính tổng các ô trong một vùng **thỏa mãn 1 điều kiện**. Dùng để:
- Tính tổng doanh số của một nhân viên cụ thể
- Tính tổng chi phí theo từng danh mục
- Tính tổng lương theo từng phòng ban

#### 2. Cú Pháp
```excel
=SUMIF(vùng_điều_kiện, điều_kiện, vùng_tính_tổng)
```

#### 3. Giải Thích Từng Tham Số

| Tham số | Bắt buộc? | Mô tả |
|---|---|---|
| `vùng_điều_kiện` | ✅ Có | Vùng chứa dữ liệu để kiểm tra điều kiện. VD: cột "Phòng ban", cột "Loại sản phẩm" |
| `điều_kiện` | ✅ Có | Điều kiện lọc. Có thể là text, số, biểu thức so sánh |
| `vùng_tính_tổng` | ⚠️ Tùy chọn | Vùng chứa các số cần cộng. Nếu bỏ qua → tính tổng chính `vùng_điều_kiện` |

> [!NOTE]
> Nếu `vùng_tính_tổng` bị bỏ qua, Excel sẽ tính tổng các ô trong **chính `vùng_điều_kiện`** thỏa điều kiện.

#### 4. Ví Dụ Minh Họa

**Ví dụ 1:** Tính tổng doanh số của nhân viên "An"
```excel
=SUMIF(B2:B100, "An", D2:D100)
→ Cột B: tên nhân viên | Cột D: doanh số
```

**Ví dụ 2 — Dùng ô tham chiếu:** Tính tổng doanh số cho nhân viên được chọn ở ô G1
```excel
=SUMIF(B2:B100, G1, D2:D100)
```

**Ví dụ 3 — Điều kiện số:** Tính tổng các đơn hàng có giá trị > 1,000,000
```excel
=SUMIF(D2:D100, ">1000000", D2:D100)
```

#### 5. Lỗi Thường Gặp

| Lỗi | Nguyên nhân | Cách Khắc Phục |
|---|---|---|
| `#VALUE!` | Vùng điều kiện và vùng tổng khác kích thước | Đảm bảo hai vùng có cùng số dòng |
| Kết quả = 0 | Điều kiện text không khớp (khoảng trắng, hoa/thường) | Dùng TRIM, kiểm tra dữ liệu gốc |

#### 6. Bài Tập Tự Luyện
1. Tính tổng lương nhân viên thuộc phòng "Kế toán".
2. Tính tổng chi phí các hạng mục có giá trị < 500,000đ.

---

### 📌 BÀI 08 — HÀM SUMIFS

#### 1. Mục Đích
`SUMIFS` là phiên bản mở rộng của `SUMIF`, tính tổng theo **nhiều điều kiện cùng lúc** (tương đương AND). Đây là một trong những hàm thực tế được dùng nhiều nhất trong công việc văn phòng.

#### 2. Cú Pháp
```excel
=SUMIFS(vùng_tính_tổng, vùng_đk_1, điều_kiện_1, vùng_đk_2, điều_kiện_2, ...)
```

> [!IMPORTANT]
> **Lưu ý quan trọng về thứ tự tham số:**
> - `SUMIF`: `(vùng_điều_kiện, điều_kiện, vùng_tổng)` — vùng tổng **ở cuối**
> - `SUMIFS`: `(vùng_tổng, vùng_đk_1, đk_1, ...)` — vùng tổng **ở đầu**
>
> **Đây là điểm học viên hay nhầm nhất giữa SUMIF và SUMIFS!**

#### 3. Ví Dụ Minh Họa

**Ví dụ 1:** Tính tổng doanh số nhân viên "An" trong tháng 3
```excel
=SUMIFS(D2:D100, B2:B100, "An", C2:C100, 3)
→ Cột D: doanh số | Cột B: tên NV | Cột C: tháng
```

**Ví dụ 2:** Tính tổng lương phòng "Kinh doanh" có mức lương trên 10 triệu
```excel
=SUMIFS(E2:E100, B2:B100, "Kinh doanh", E2:E100, ">10000000")
```

**Ví dụ 3 — Dùng ô tham chiếu:** Tính tổng doanh số theo phòng (ô G1) và tháng (ô H1)
```excel
=SUMIFS(D2:D100, B2:B100, G1, C2:C100, H1)
```

#### 4. Bài Tập Tự Luyện
1. Tính tổng doanh số của cửa hàng "Chi nhánh A" trong quý 2 (tháng 4, 5, 6).
2. Tính tổng số lượng bán sản phẩm "Laptop" tại khu vực "Hà Nội" trong tháng 10.

---

### 📌 BÀI 09 — HÀM SUMPRODUCT

#### 1. Mục Đích
`SUMPRODUCT` là hàm **đa năng bậc nhất** trong Excel. Nó có thể:
- **Tính tổng có điều kiện** (thay thế SUMIFS)
- **Đếm có điều kiện** (thay thế COUNTIFS)
- **Tính tổng tích** (nhân rồi cộng — tính doanh thu = số lượng × đơn giá)
- Xử lý các bài toán phức tạp mà SUMIFS không làm được (ví dụ điều kiện OR)

#### 2. Cú Pháp Cơ Bản
```excel
=SUMPRODUCT(mảng_1, mảng_2, ...)
```

**Cú pháp dùng như SUMIFS (phổ biến nhất):**
```excel
=SUMPRODUCT((điều_kiện_1) * (điều_kiện_2) * vùng_tính_tổng)
```

#### 3. Cách Hàm Hoạt Động (Quan Trọng!)

> [!NOTE]
> SUMPRODUCT xử lý **từng ô một** trong mảng theo thứ tự. Mỗi phép so sánh tạo ra mảng TRUE/FALSE, Excel tự chuyển TRUE=1, FALSE=0. Phép nhân `*` giữa các mảng hoạt động như AND (1×1=1, 1×0=0, 0×0=0).

**Minh họa cơ chế:**
```
Dữ liệu: Phòng: [KD, KT, KD, KD] | Doanh số: [100, 200, 150, 80]
=SUMPRODUCT((B2:B5="KD") * D2:D5)

Bước 1: (B2:B5="KD") → {TRUE, FALSE, TRUE, TRUE} → {1, 0, 1, 1}
Bước 2: {1,0,1,1} * {100,200,150,80} → {100, 0, 150, 80}
Bước 3: Tổng = 100 + 0 + 150 + 80 = 330 ✅
```

#### 4. Ví Dụ Minh Họa

**Ví dụ 1 — Tính doanh thu (số lượng × đơn giá):**
```excel
=SUMPRODUCT(C2:C100, D2:D100)
→ Cột C: số lượng | Cột D: đơn giá
→ Tính tổng (C2×D2) + (C3×D3) + ... + (C100×D100)
```

**Ví dụ 2 — Tương đương SUMIFS:**
```excel
Thay vì: =SUMIFS(D2:D100, B2:B100, "KD", C2:C100, 3)
Viết:    =SUMPRODUCT((B2:B100="KD") * (C2:C100=3) * D2:D100)
```

**Ví dụ 3 — Điều kiện OR (SUMIFS không làm được):**  
Tính tổng doanh số phòng "KD" **hoặc** phòng "KT":
```excel
=SUMPRODUCT(((B2:B100="KD") + (B2:B100="KT") > 0) * D2:D100)
```

#### 5. So Sánh SUMIF, SUMIFS, SUMPRODUCT

| | SUMIF | SUMIFS | SUMPRODUCT |
|---|---|---|---|
| Số điều kiện | 1 | Nhiều (AND) | Nhiều (AND hoặc OR) |
| Điều kiện OR | ❌ Không | ❌ Không | ✅ Có |
| Độ phức tạp cú pháp | Dễ | Trung bình | Khó hơn |
| Hiệu suất | Nhanh | Nhanh | Chậm hơn với dữ liệu lớn |
| Khuyến nghị dùng | Bài toán 1 điều kiện | Bài toán nhiều điều kiện AND | Bài toán phức tạp, OR |

---

### 📌 BÀI 10 — CHUẨN HÓA DỮ LIỆU & TƯ DUY TABLE

#### Mục Đích
Trước khi tạo PivotTable, dữ liệu phải "sạch". Dữ liệu "bẩn" dẫn đến báo cáo sai. Phần này học viên cần hiểu **chuẩn của dữ liệu** để tạo bảng tính đúng ngay từ đầu.

#### Tiêu Chuẩn Dữ Liệu Cho PivotTable

| ✅ Dữ liệu "Chuẩn" | ❌ Dữ liệu "Bẩn" |
|---|---|
| Hàng đầu tiên là tiêu đề (Header row) | Không có hàng tiêu đề |
| Mỗi cột là 1 loại thông tin | Nhiều thông tin gộp trong 1 cột |
| Không có ô được Merge | Có Merge cells |
| Không có dòng trống | Có dòng trống giữa dữ liệu |
| Mỗi hàng là 1 bản ghi độc lập | Có dòng "Tổng cộng" xen giữa |
| Dữ liệu số được định dạng là số | Số lưu dạng text (căn trái) |
| Ngày tháng được nhập đúng định dạng | Ngày nhập dạng text "01/01/2024" |

> [!CAUTION]
> Merge cells là **kẻ thù số 1** của PivotTable. Nếu dữ liệu có Merge cells, PivotTable sẽ chỉ nhận giá trị ô đầu tiên của vùng được merge, dẫn đến kết quả sai hoàn toàn.

#### Các Bước Chuẩn Hóa Dữ Liệu
1. **Bỏ Merge cells:** Chọn vùng → Home → Merge & Center → Unmerge Cells → Fill down để điền lại
2. **Xóa dòng trống:** Ctrl+G → Special → Blanks → Delete rows
3. **Chuyển số text sang số:** Chọn cột → Data → Text to Columns → Finish
4. **Xóa khoảng trắng thừa:** Dùng hàm `=TRIM()` hoặc Find & Replace
5. **Đặt vùng dữ liệu thành Table:** Ctrl+T để tạo bảng thông minh

---

## 📋 Đề Xuất Bổ Sung Cho Toàn Giáo Trình

### 1. Thêm "Bảng Cheat Sheet" Tổng Hợp Cuối Mỗi Chương

Ví dụ cuối Chương III nên có:

| Hàm | Cú pháp | Dùng khi |
|---|---|---|
| `COUNTIF` | `=COUNTIF(vùng, đk)` | Đếm theo **1** điều kiện |
| `COUNTIFS` | `=COUNTIFS(vùng1, đk1, vùng2, đk2)` | Đếm theo **nhiều** điều kiện AND |

### 2. Thêm Phần "Câu Hỏi Trắc Nghiệm" Nhanh

Ví dụ sau bài AND/OR:
- Hàm nào trả về TRUE khi chỉ cần 1 điều kiện đúng? → `OR`
- `AND(TRUE, FALSE, TRUE)` trả về gì? → `FALSE`
- Hàm AND có thể kiểm tra tối đa bao nhiêu điều kiện? → 255

### 3. Thêm Mục "Tình Huống Thực Tế" Đầu Mỗi Chương

Thay vì chỉ liệt kê ví dụ, hãy kể một **tình huống thực tế ngắn**:

> *"Chị Lan làm kế toán, mỗi cuối tháng phải ngồi lọc từng dòng trong bảng lương để cộng tổng lương cho từng phòng ban. Với 300 nhân viên, chị mất 2–3 tiếng mỗi tháng. Sau khi biết SUMIFS, công việc này chỉ còn 5 phút."*

### 4. Thêm Bài Tập Tích Hợp Cuối Chương

Thay vì mỗi bài chỉ có 1 ví dụ độc lập, thêm **1 bài tập lớn** kết hợp nhiều hàm trong chương để học viên thực hành tích hợp.

---

## 🗂️ Cấu Trúc File Giáo Trình Đề Xuất

```
Giáo Trình THVP02 - Excel Nâng Cao 1 (phiên bản mới)
├── Trang bìa + Mục lục
├── Hướng dẫn sử dụng giáo trình
├── Chương I: Kiểm Tra Nhiều Điều Kiện
│   ├── Mục đích + Tình huống thực tế
│   ├── Bài 01: AND  [Cú pháp → Tham số → Bảng hành vi → Ví dụ → Lỗi → BT]
│   ├── Bài 02: OR   [tương tự]
│   ├── Bảng so sánh AND vs OR
│   └── Câu hỏi trắc nghiệm + Bài tập chương
├── Chương II: Hàm IF Nhiều Điều Kiện
│   ├── Bài 03: IF + AND
│   ├── Bài 04: IF + OR
│   └── Bài tập tích hợp
├── Chương III: Hàm Đếm Có Điều Kiện
│   ├── Bài 05: COUNTIF
│   ├── Bài 06: COUNTIFS
│   ├── Cheat Sheet so sánh
│   └── Bài tập tích hợp
├── Chương IV: Hàm Tính Tổng Có Điều Kiện
│   ├── Bài 07: SUMIF
│   ├── Bài 08: SUMIFS  ← Lưu ý thứ tự tham số khác SUMIF!
│   ├── Bài 09: SUMPRODUCT
│   ├── Bảng so sánh 3 hàm
│   └── Bài tập tích hợp
├── Chương V: PivotTable
│   ├── Bài 10: Chuẩn hóa dữ liệu  ← Cần viết chi tiết nhất
│   ├── Bài 11: Tạo và thiết lập PivotTable
│   ├── Bài 12: Định dạng báo cáo
│   └── Bài thực hành tạo báo cáo hoàn chỉnh
└── Chương VI: Ôn tập & Kiểm tra
    ├── Bài ôn tập tổng hợp
    └── Đề kiểm tra mẫu
```

---

> [!TIP]
> **Ưu tiên viết lại trước:** Bài 05–09 (COUNTIF, COUNTIFS, SUMIF, SUMIFS, SUMPRODUCT) vì trong giáo trình hiện tại gần như trống — chỉ có hình ảnh và "Ví dụ: 👉" mà không có văn bản giải thích.
