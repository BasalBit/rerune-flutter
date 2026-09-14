import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();
  static const bgPrimary = Color(0xFF0B1019);
  static const bgSecondary = Color(0xFF161F2D);
  static const textPrimary = Color(0xFFF4F1EA);
  static const textSecondary = Color(0xFFA5ADBA);
  static const accentPrimary = Color(0xFFF4AE45);
  static const accentStrong = Color(0xFFFFC36D);
  static const borderSubtle = Color(0xFF293241);

  static ThemeData get darkTheme => ThemeData(
    useMaterial3: true,
    fontFamily: 'Instrument Sans',
    brightness: Brightness.dark,
    scaffoldBackgroundColor: bgPrimary,
    colorScheme: const ColorScheme.dark(
      primary: accentPrimary,
      onPrimary: bgPrimary,
      secondary: accentStrong,
      surface: bgSecondary,
      onSurface: textPrimary,
      error: Color(0xFFFFB4AB),
    ),
    textTheme: const TextTheme(
      displaySmall: TextStyle(
        fontSize: 34,
        height: 1.12,
        fontWeight: FontWeight.w700,
        letterSpacing: -1.2,
        color: textPrimary,
      ),
      headlineMedium: TextStyle(
        fontSize: 26,
        height: 1.2,
        fontWeight: FontWeight.w600,
        letterSpacing: -0.6,
        color: textPrimary,
      ),
      titleLarge: TextStyle(
        fontSize: 20,
        height: 1.25,
        fontWeight: FontWeight.w600,
        color: textPrimary,
      ),
      bodyLarge: TextStyle(fontSize: 16, height: 1.6, color: textPrimary),
      bodyMedium: TextStyle(fontSize: 14, height: 1.5, color: textSecondary),
      labelLarge: TextStyle(
        fontSize: 14,
        height: 1.3,
        fontWeight: FontWeight.w600,
      ),
      labelMedium: TextStyle(
        fontSize: 12,
        height: 1.4,
        fontWeight: FontWeight.w500,
        color: textSecondary,
      ),
    ),
    filledButtonTheme: FilledButtonThemeData(
      style: FilledButton.styleFrom(
        minimumSize: const Size(48, 52),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        textStyle: const TextStyle(
          fontFamily: 'Instrument Sans',
          fontSize: 15,
          fontWeight: FontWeight.w700,
        ),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        minimumSize: const Size(48, 48),
        side: const BorderSide(color: borderSubtle),
        foregroundColor: textSecondary,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      ),
    ),
    iconButtonTheme: IconButtonThemeData(
      style: IconButton.styleFrom(
        minimumSize: const Size(48, 48),
        foregroundColor: textSecondary,
      ),
    ),
    popupMenuTheme: PopupMenuThemeData(
      color: bgSecondary,
      surfaceTintColor: Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
        side: const BorderSide(color: borderSubtle),
      ),
    ),
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: bgSecondary,
      showDragHandle: true,
    ),
    navigationBarTheme: NavigationBarThemeData(
      backgroundColor: bgPrimary,
      indicatorColor: accentPrimary.withValues(alpha: 0.12),
      labelTextStyle: WidgetStateProperty.resolveWith(
        (states) => TextStyle(
          fontFamily: 'Instrument Sans',
          fontSize: 12,
          fontWeight: FontWeight.w600,
          color: states.contains(WidgetState.selected)
              ? accentPrimary
              : textSecondary,
        ),
      ),
      iconTheme: WidgetStateProperty.resolveWith(
        (states) => IconThemeData(
          color: states.contains(WidgetState.selected)
              ? accentPrimary
              : textSecondary,
        ),
      ),
    ),
    chipTheme: ChipThemeData(
      backgroundColor: bgSecondary,
      selectedColor: accentPrimary.withValues(alpha: .16),
      side: const BorderSide(color: borderSubtle),
      shape: const StadiumBorder(),
      labelStyle: const TextStyle(
        fontFamily: 'Instrument Sans',
        fontSize: 13,
        color: textPrimary,
      ),
      secondaryLabelStyle: const TextStyle(
        fontFamily: 'Instrument Sans',
        fontSize: 13,
        color: accentStrong,
      ),
      checkmarkColor: accentStrong,
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
    ),
    dividerColor: borderSubtle,
  );
}
