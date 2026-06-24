# Hướng dẫn thiết kế UI — Tanlu Management

Tài liệu chuẩn cho mọi màn hình và widget mới. **Luôn tuân thủ** trước khi viết UI hoặc refactor giao diện.

---

## 1. Màu sắc — `AppColors`

- **Chỉ dùng** màu từ `lib/core/themes/app_colors.dart` (`AppColors.*`).
- **Không** hard-code `Color(0xFF...)` trong widget presentation (trừ file theme).
- Chưa có màu phù hợp → **thêm vào `AppColors`** kèm tên semantic rõ nghĩa, rồi dùng từ class đó.

| Vai trò | Gợi ý |
|--------|--------|
| Chữ chính | `AppColors.grayDark` |
| Chữ phụ / hint | `AppColors.grayMedium` |
| Nền app | `AppColors.grayBg` |
| Nền khối nhẹ | `AppColors.grayVeryLight` |
| Viền | `AppColors.grayLight` |
| CTA / nhấn | `AppColors.primary` |
| Thành công | `AppColors.success` / `successLight` |
| Lỗi | `AppColors.error` / `errorLight` |
| Nền card trắng | `AppColors.white` |

---

## 2. Typography — `AppText`

- **Chỉ dùng** `AppText` từ `lib/core/widgets/app_text.dart`, không dùng `Text()` trực tiếp trừ trường hợp đặc biệt (emoji thuần).
- Luôn truyền `fontSize` bằng `.sp` qua tham số `fontSize:` của `AppText`.
- **Không** tự ý tạo cỡ chữ lạ; bám bảng dưới.

### Bảng cỡ chữ chuẩn

| Vai trò | Widget | `fontSize` | `fontWeight` | Màu |
|--------|--------|------------|--------------|-----|
| **Tiêu đề AppBar** | `AppText.h2` | `18.sp` | `FontWeight.w800` | `grayDark` |
| **Tiêu đề trong màn** (section, tên block) | `AppText.b1` | `14.sp` | `FontWeight.w600`–`w700` | `grayDark` |
| **Nội dung chính** | `AppText.b1` | `12.sp` | `FontWeight.w400`–`w500` | `grayDark` |
| **Nội dung phụ / caption** | `AppText.b2` | `10.sp`–`12.sp` | `FontWeight.w400`–`w600` | `grayMedium` |

### Ví dụ

```dart
// AppBar title (thường trong FeedAppBar / CustomAppBar)
AppText.h2(
  'Tạo bài viết',
  fontSize: 18.sp,
  fontWeight: FontWeight.w800,
  color: AppColors.grayDark,
)

// Tiêu đề section trong body
AppText.b1(
  'Thêm vào bài viết',
  fontSize: 14.sp,
  fontWeight: FontWeight.w700,
  color: AppColors.grayDark,
)

// Nội dung
AppText.b1(
  post.content,
  fontSize: 12.sp,
  color: AppColors.grayDark,
)

// Gợi ý / mô tả nhỏ
AppText.b2(
  'Tối đa 9 ảnh',
  fontSize: 10.sp,
  color: AppColors.grayMedium,
)
```

---

## 3. Bo góc — `borderRadius`

- **Khung / card / ô nhập / nút pill trong feature mới:** `BorderRadius.circular(8.r)`.
- Dùng hằng số có sẵn: `AppColors.radiusS` (= `8.0`) khi cần `double` không qua `.r`.
- **Không** dùng `12.r`, `16.r`, `24.r` cho card mới trừ khi có lý do đặc biệt và được review.

```dart
decoration: BoxDecoration(
  color: AppColors.white,
  borderRadius: BorderRadius.circular(8.r),
  border: Border.all(
    color: AppColors.grayLight.withValues(alpha: 0.6),
  ),
)
```

---

## 4. Card — đổ bóng

Mọi **card** (container nền trắng tách khỏi nền app) **bắt buộc** có `boxShadow`:

```dart
Container(
  decoration: BoxDecoration(
    color: AppColors.white,
    borderRadius: BorderRadius.circular(8.r),
    border: Border.all(
      color: AppColors.grayLight.withValues(alpha: 0.6),
    ),
    boxShadow: [
      BoxShadow(
        color: Colors.black.withValues(alpha: 0.04),
        blurRadius: 6,
        offset: const Offset(0, 2),
      ),
    ],
  ),
  child: child,
)
```

- Nền màn hình list/feed: `AppColors.grayBg`.
- Card nằm trên nền trắng full-screen (vd. form full trắng): có thể chỉ `border`, không shadow — ưu tiên **một** kiểu nhất quán trong cùng màn.

---

## 5. Widget tái sử dụng — ưu tiên trước

| Nhu cầu | Widget có sẵn |
|--------|----------------|
| Chữ | `AppText` |
| Màu | `AppColors` |
| Nút icon vuông/bo | `AppIconButton` |
| AppBar feed / back | `FeedAppBar` |
| Avatar | `AttendanceAvatar` |
| Snackbar | `AppSnackbar` |
| Card chuẩn (8.r + shadow) | `AppSurfaceCard` |
| Icon | `Icons.*` (Material) hoặc `CupertinoIcons.*` qua `package:flutter/cupertino.dart` |
| Responsive | `flutter_screenutil` — `.w`, `.h`, `.sp`, `.r` |

**Trước khi tạo widget mới:** tìm trong `lib/core/widgets/` và `lib/features/*/presentation/**/widgets/`.

---

## 6. Đặt tên class / file

- **File:** `snake_case`, mô tả vai trò — `feed_post_card.dart`, `create_post_body.dart`.
- **Class widget:** `PascalCase`, tiền tố ngữ cảnh — `FeedPostCard`, `CreatePostBody`, `MyFeedComposeCard`.
- **Widget private trong file:** `_ClassChip`, `_MediaIcon`.
- **Tránh:** tên chung chung (`CustomWidget`, `ItemView`, `BodyWidget` không có prefix feature).

### Cấu trúc thư mục presentation

```
feature/
  presentation/
    {page_name}_page/
      pages/
      widgets/
      bloc/
```

- Page mỏng: bloc + điều hướng + ghép widget.
- UI chi tiết: `widgets/` — gom logic hiển thị, không nhồi hết vào `*_page.dart`.

---

## 7. Spacing & layout

- Padding ngang màn hình: `16.w`.
- Khoảng cách giữa section: `12.h`.
- Padding trong card: `12.w` / `12.h`.
- Luôn bọc app bằng `ScreenUtil` (đã có ở root).

---

## 8. Checklist trước khi merge UI

- [ ] Không có `Color(0x...)` lạ trong presentation
- [ ] Chữ dùng `AppText` + đúng bảng cỡ (18 / 14 / 12 / 10 `.sp`)
- [ ] Card / khung: `8.r` + shadow (nếu là card)
- [ ] Đã tìm widget tái sử dụng trước khi viết mới
- [ ] Tên class/file dễ hiểu theo feature

---

## 9. Prompt mẫu (copy khi nhờ AI thiết kế UI)

Dán block sau vào đầu yêu cầu:

```
Thiết kế UI theo chuẩn Tanlu Management (docs/UI_DESIGN_GUIDELINES.md):

1. Màu: chỉ dùng AppColors (lib/core/themes/app_colors.dart). Thiếu màu thì thêm vào class đó.
2. Chữ: chỉ dùng AppText (lib/core/widgets/app_text.dart):
   - Tiêu đề AppBar: AppText.h2, 18.sp, w800, grayDark
   - Tiêu đề trong màn: AppText.b1, 14.sp, w600–w700, grayDark
   - Nội dung: AppText.b1, 12.sp, grayDark
   - Phụ / caption: AppText.b2, 10–12.sp, grayMedium
3. borderRadius khung/card: luôn 8.r
4. Card: nền white, viền grayLight nhạt, boxShadow (alpha 0.04, blur 6, offset 0,2)
5. Ưu tiên widget có sẵn: AppIconButton, FeedAppBar, AttendanceAvatar, AppSnackbar
6. Đặt tên class rõ nghĩa theo feature; tách widget vào widgets/; page giữ mỏng
7. Spacing: padding ngang 16.w, gap section 12.h, padding card 12.w

[Mô tả màn hình / thay đổi cụ thể ở đây]
```

---

## 10. Tham chiếu nhanh

| File | Đường dẫn |
|------|-----------|
| Màu | `lib/core/themes/app_colors.dart` |
| Typography | `lib/core/widgets/app_text.dart` |
| Widget dùng chung | `lib/core/widgets/` |
