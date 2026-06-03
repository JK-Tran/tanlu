import 'package:flutter/material.dart';

abstract final class AppColors {
  AppColors._();

  // Primary Branding (Soft but professional)
  static const Color primary = Color(0xFF7B61FF);
  static const Color primaryLight = Color(0xFFF3E8FF);
  static const Color accent = Color(0xFF7B61FF);
  static const Color accentLight = Color(0xFFF3E8FF);
  static const Color progress = Color(0xFF7B61FF);
  static const Color progressLight = Color(0xFFE9E7FF);
  static const Color reward = Color(0xFFFFD54F);
  static const Color rewardLight = Color(0xFFFFF9E7);

  // Neutral Colors (For UI Hierarchy)
  static const Color grayDark = Color(0xFF1D1D1F); // Main Text (#1D1D1F)
  static const Color grayDark80 = Color(0xFF1D1D1F);
  static const Color grayMedium = Color(0xFF8E8E93); // Subtext (#8E8E93)
  static const Color grayLight = Color(
    0xFFE9E9EF,
  ); // Borders/Dividers (#E9E9EF)
  static const Color grayBg = Color(0xFFF8F8FC); // Screen Background (#F8F8FC)

  // Semantic
  static const Color success = Color(0xFF34C759); // iOS Green
  static const Color successLight = Color(0xFFEAF9EE);
  static const Color error = Color(0xFFFF3B30); // iOS Red
  static const Color errorLight = Color(0xFFFFEBEA);
  static const Color warning = Color(0xFFFF9500); // iOS Orange
  static const Color warningLight = Color(0xFFFFF4E6);
  static const Color info = Color(0xFF007AFF); // iOS Blue
  static const Color infoLight = Color(0xFFE6F2FF);

  // Environmental
  static const Color sky = Color(0xFFE0F2FE);
  static const Color hill = Color(0xFFDCFCE7);

  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF000000);
  static const Color grayVeryLight = Color(0xFFF8F8FC);

  // Theme Specific
  static const Color lightBackground = Color(0xFFF8F8FC);
  static const Color lightSurface = Color(0xFFFFFFFF);
  static const Color lightOnBackground = Color(0xFF1D1D1F);
  static const Color lightOnSurface = Color(0xFF1D1D1F);

  static const Color lightOnError = Color(0xFFFFFFFF);

  // Dark theme
  static const Color darkBackground = Color(0xFF0F172A);
  static const Color darkSurface = Color(0xFF1E293B);
  static const Color darkSurfaceVariant = Color(0xFF334155);
  static const Color darkOnBackground = Color(0xFFF8FAFC);
  static const Color darkOnSurface = Color(0xFFE2E8F0);
  static const Color darkOnSurfaceVariant = Color(0xFF94A3B8);
  static const Color darkOutline = Color(0xFF475569);
  static const Color darkError = Color(0xFFEF4444);
  static const Color darkOnError = Color(0xFF0F172A);

  // --- 4. VIBE COLORS (Dựa trên hệ màu nóng) ---
  static const Color vibeChill = Color(0xFF81B29A);
  static const Color vibeParty = Color(0xFFE76F51);
  static const Color vibeFoodie = Color(0xFFF2CC8F);
  static const Color vibePhoto = Color(0xFF3D405B);

  static const double radiusS = 8.0;
  static const double radiusM = 16.0;
  static const double radiusL = 24.0;
  static const double radiusXL = 32.0;
}
