import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppThemeData {
  static const _lightFillColor = Colors.black;
  static const _darkFillColor = Colors.white;

  static final Color _lightFocusColor = Colors.black.withValues(alpha: 0.12);
  static final Color _darkFocusColor = Colors.white.withValues(alpha: 0.12);

  static ThemeData lightThemeData =
      themeData(lightColorScheme, _lightFocusColor);
  static ThemeData darkThemeData = themeData(darkColorScheme, _darkFocusColor);

  static ThemeData themeData(ColorScheme colorScheme, Color focusColor) {
    return ThemeData(
      colorScheme: colorScheme,
      textTheme: _textTheme,
      primaryColor: const Color(0xFF030303),
      iconTheme: IconThemeData(color: colorScheme.darkGrey),
      canvasColor: colorScheme.surface,
      scaffoldBackgroundColor: colorScheme.surface,
      highlightColor: Colors.transparent,
      focusColor: focusColor,
      snackBarTheme: SnackBarThemeData(
        behavior: SnackBarBehavior.floating,
        backgroundColor: Color.alphaBlend(
          _lightFillColor.withValues(alpha: 0.80),
          _darkFillColor,
        ),
        contentTextStyle: _textTheme.titleMedium!.apply(color: _darkFillColor),
      ),
    );
  }

  static const ColorScheme lightColorScheme = ColorScheme(
    primary: Color(0xFF181A20),
    onPrimary: Color(0xFF6B6F80),
    secondary: Color(0xFF4E6EE0),
    surface: Color(0xFFFFFFFF),
    error: Color(0xFFE53030),
    onError: Color(0xFFCDD0DD),
    surfaceTint: Color.fromRGBO(169, 172, 186, 1),
    primaryContainer: Color(0xFFF0F2F7),
    onSurface: Colors.white,
    onSecondary: Color(0xFF322942),
    brightness: Brightness.light,
  );

  static const ColorScheme darkColorScheme = ColorScheme(
    primary: Color(0xFFFFFFFF),
    onPrimary: Color(0xFF9A9EB0),
    secondary: Color(0xFF6882E0),
    surface: Color(0xFF181A20),
    error: Color(0xFFE63030),
    onError: Color(0xFF2A2D38),
    surfaceTint: Color(0xFF181A20),
    primaryContainer: Color(0xFFF0F2F7),
    onSurface: Colors.white,
    onSecondary: Color(0xFF322942),
    brightness: Brightness.light,
  );

  static const _regular = FontWeight.w400;
  static const _medium = FontWeight.w500;
  static const _semiBold = FontWeight.w600;
  static const _bold = FontWeight.w700;

  static final TextTheme _textTheme = TextTheme(
    displayLarge: GoogleFonts.poppins(
      fontWeight: _semiBold,
      fontSize: 24.0,
    ),
    displayMedium: GoogleFonts.poppins(
      fontWeight: _semiBold,
      fontSize: 22.0,
    ),
    displaySmall: GoogleFonts.poppins(
      fontWeight: _semiBold,
      fontSize: 18.0,
    ),
    headlineMedium: GoogleFonts.poppins(
      fontWeight: _semiBold,
      fontSize: 32.0,
    ),
    headlineSmall: GoogleFonts.poppins(
      fontWeight: _bold,
      fontSize: 48.0,
    ),
    titleLarge: GoogleFonts.poppins(
      fontWeight: _semiBold,
      fontSize: 16.0,
    ),
    titleMedium: GoogleFonts.inter(
      fontWeight: _medium,
      fontSize: 14.0,
    ),
    titleSmall: GoogleFonts.inter(
      fontWeight: _semiBold,
      fontSize: 16.0,
    ),
    labelLarge: GoogleFonts.inter(
      fontWeight: _bold,
      fontSize: 14.0,
    ),
    bodyLarge: GoogleFonts.inter(
      fontWeight: _regular,
      fontSize: 14.0,
    ),
    bodyMedium: GoogleFonts.inter(
      fontWeight: _bold,
      fontSize: 13.0,
    ),
    bodySmall: GoogleFonts.inter(
      fontWeight: _medium,
      fontSize: 12.0,
    ),
    labelSmall: GoogleFonts.inter(
      fontWeight: _bold,
      fontSize: 10.0,
    ),
  );
}

extension ColorThemeExtension on ColorScheme {
  // Color get navigation => (Utility.getSelectedTheme() == ThemeMode.light)
  //     ? const Color(0xFF181A20)
  //     : const Color(0xFF373B4A);
  Color get dashboardCardText => const Color(0xFF181A20);
  Color get onNavigation => const Color(0xFFFFFFFF);

  Color get darkGrey =>
      // (Utility.getSelectedTheme() == ThemeMode.light)
      const Color(0xFF6B6F80);
  // : const Color(0xFF9A9EB0);
}

extension CustomStyles on TextTheme {
  static const _regular = FontWeight.w400;
  static const _medium = FontWeight.w500;
  static const _semiBold = FontWeight.w600;
  static const _bold = FontWeight.w700;
  TextStyle get title2 {
    return GoogleFonts.inter(
      //headline6
      fontWeight: _medium,
      fontSize: 16.0,
    );
  }

  TextStyle get title3 {
    return GoogleFonts.inter(
      fontWeight: _semiBold,
      fontSize: 14.0,
    );
  }

  TextStyle get text1 {
    return GoogleFonts.inter(
      fontWeight: _bold,
      fontSize: 16,
    );
  }

  TextStyle get text2 {
    return GoogleFonts.inter(
      fontWeight: _semiBold,
      fontSize: 16,
    );
  }

  TextStyle get subTitle {
    return GoogleFonts.poppins(
      //headline6
      fontWeight: _semiBold,
      fontSize: 14.0,
    );
  }

  TextStyle get buttonLarge {
    return GoogleFonts.poppins(
      fontWeight: _bold,
      fontSize: 16.0,
    );
  }

  TextStyle get captionSmall {
    return GoogleFonts.poppins(
      fontWeight: _medium,
      fontSize: 10.0,
    );
  }

  TextStyle get interCaptionSmall {
    return GoogleFonts.inter(
      fontWeight: _medium,
      fontSize: 10.0,
    );
  }

  TextStyle get bodyTextBold {
    return GoogleFonts.inter(
      fontWeight: _bold,
      fontSize: 12.0,
    );
  }
}
