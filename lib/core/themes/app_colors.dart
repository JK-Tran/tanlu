import 'package:flutter/material.dart';

abstract final class AppColors {
  AppColors._();

  // --- 1. Primary Branding (Màu Nhấn 10% - Đỏ Tươi Sáng, Năng Động) ---
  static const Color primary = Color(
    0xFFFF4B4B,
  ); // Đỏ chủ đạo (Năng động, thu hút sự chú ý cho CTA, Nút bấm)
  static const Color primaryLight = Color(
    0xFFFFEAEA,
  ); // Đỏ rất nhạt (Dùng làm nền mờ cho các thành phần được chọn)
  static const Color accent = Color(
    0xFFFF7675,
  ); // Đỏ san hô nhạt (Làm màu phụ trợ 30% cho gradient hoặc icon)
  static const Color accentLight = Color(0xFFFFF0F1);

  static const Color progress = Color(0xFFFF4B4B);
  static const Color progressLight = Color(0xFFFFEAEA);

  static const Color reward = Color(0xFFFFA502); // Vàng cam ấm
  static const Color rewardLight = Color(0xFFFFF6E5);

  // --- 2. Neutral Colors (Màu Nền 60% & Text 30%) ---
  // Theo 60-30-10: Nền 60% (Trắng/Xám nhạt ấm), Text & Khối phụ 30% (Xám đậm/Đỏ nhạt)
  static const Color grayDark = Color(
    0xFF2D3436,
  ); // Chữ chính (Xám đen ánh nâu ấm, hài hòa với đỏ)
  static const Color grayDark80 = Color(0xCC2D3436);
  static const Color grayMedium = Color(0xFF8395A7); // Chữ phụ
  static const Color grayLight = Color(0xFFDFE4EA); // Viền
  static const Color grayBg = Color(
    0xFFFCF8F8,
  ); // Nền app (60%) - Trắng hơi pha chút xíu ánh hồng/đỏ cho ấm áp
  static const Color grayVeryLight = Color(0xFFF1F2F6);

  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF000000);

  // --- 3. Semantic Colors (Giữ tone Pastel nhưng phù hợp với Đỏ) ---
  static const Color success = Color(0xFF2ED573); // Xanh lá
  static const Color successDark = Color(0xFF38B28B); // Xanh lá đậm (giống icon điểm danh)
  static const Color successLight = Color(0xFFEBFDF2);

  static const Color error = Color(
    0xFFD63031,
  ); // Đỏ sậm hơn để phân biệt với Đỏ Primary
  static const Color errorLight = Color(0xFFFFEAEA);

  static const Color warning = Color(0xFFFFA502); // Vàng cam
  static const Color warningLight = Color(0xFFFFF6E5);

  static const Color info = Color(0xFF1E90FF); // Xanh da trời
  static const Color infoLight = Color(0xFFF0F4FF);

  // --- 4. Dashboard Card Colors (Phối màu Tương đồng & Tương phản nhẹ) ---
  // Thẻ Đỏ/Hồng (Tương đồng với Primary)
  static const Color cardPinkBg = Color(0xFFFFF0F1);
  static const Color cardPinkText = Color(0xFFFF4B4B);

  // Thẻ Cam (Tương đồng)
  static const Color cardOrangeBg = Color(0xFFFFF7E8);
  static const Color cardOrangeText = Color(0xFFFA983A);

  // Thẻ Xanh lá (Tương phản nhẹ để cân bằng)
  static const Color cardGreenBg = Color(0xFFEBFDF2);
  static const Color cardGreenText = Color(0xFF2ED573);

  // Thẻ Xanh lam (Tương phản lạnh)
  static const Color cardBlueBg = Color(0xFFF0F4FF);
  static const Color cardBlueText = Color(0xFF1E90FF);

  // Environmental
  static const Color sky = Color(0xFFE0F2FE);
  static const Color hill = Color(0xFFDCFCE7);

  // --- 5. Theme Specific (Light/Dark mode) ---
  static const Color lightBackground = Color(0xFFF8FAFC);
  static const Color lightSurface = Color(0xFFFFFFFF);
  static const Color lightOnBackground = Color(0xFF1E293B);
  static const Color lightOnSurface = Color(0xFF1E293B);
  static const Color lightOnError = Color(0xFFFFFFFF);

  static const Color darkBackground = Color(0xFF0F172A);
  static const Color darkSurface = Color(0xFF1E293B);
  static const Color darkSurfaceVariant = Color(0xFF334155);
  static const Color darkOnBackground = Color(0xFFF8FAFC);
  static const Color darkOnSurface = Color(0xFFE2E8F0);
  static const Color darkOnSurfaceVariant = Color(0xFF94A3B8);
  static const Color darkOutline = Color(0xFF475569);
  static const Color darkError = Color(0xFFEF4444);
  static const Color darkOnError = Color(0xFF0F172A);

  // --- 6. VIBE COLORS ---
  static const Color vibeChill = Color(0xFF81B29A);
  static const Color vibeParty = Color(0xFFE76F51);
  static const Color vibeFoodie = Color(0xFFF2CC8F);
  static const Color vibePhoto = Color(0xFF3D405B);

  // --- Dimensions ---
  static const double radiusS = 8.0;
  static const double radiusM = 16.0;
  static const double radiusL = 24.0;
  static const double radiusXL = 32.0;
}
