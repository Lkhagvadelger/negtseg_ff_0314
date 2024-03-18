// ignore_for_file: overridden_fields, annotate_overrides

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class FlutterFlowTheme {
  static FlutterFlowTheme of(BuildContext context) {
    return LightModeTheme();
  }

  @Deprecated('Use primary instead')
  Color get primaryColor => primary;
  @Deprecated('Use secondary instead')
  Color get secondaryColor => secondary;
  @Deprecated('Use tertiary instead')
  Color get tertiaryColor => tertiary;

  late Color primary;
  late Color secondary;
  late Color tertiary;
  late Color alternate;
  late Color primaryText;
  late Color secondaryText;
  late Color primaryBackground;
  late Color secondaryBackground;
  late Color accent1;
  late Color accent2;
  late Color accent3;
  late Color accent4;
  late Color success;
  late Color warning;
  late Color error;
  late Color info;

  late Color black;
  late Color white;
  late Color placeholder;
  late Color helpText;
  late Color grayBodytext;
  late Color iconPrimary;
  late Color badgeWarningBG;
  late Color badgeWarningText;
  late Color alpha1;
  late Color alpha2;
  late Color alpha3;
  late Color alpha4;
  late Color errorText;
  late Color errorIcon;
  late Color successText;
  late Color successIcon;
  late Color warningText;
  late Color warningIcon;
  late Color borderSecondary;
  late Color borderBottomColor;
  late Color grayBodyText;
  late Color customColor1;
  late Color warning50;
  late Color warningBorder;
  late Color indigo50;

  @Deprecated('Use displaySmallFamily instead')
  String get title1Family => displaySmallFamily;
  @Deprecated('Use displaySmall instead')
  TextStyle get title1 => typography.displaySmall;
  @Deprecated('Use headlineMediumFamily instead')
  String get title2Family => typography.headlineMediumFamily;
  @Deprecated('Use headlineMedium instead')
  TextStyle get title2 => typography.headlineMedium;
  @Deprecated('Use headlineSmallFamily instead')
  String get title3Family => typography.headlineSmallFamily;
  @Deprecated('Use headlineSmall instead')
  TextStyle get title3 => typography.headlineSmall;
  @Deprecated('Use titleMediumFamily instead')
  String get subtitle1Family => typography.titleMediumFamily;
  @Deprecated('Use titleMedium instead')
  TextStyle get subtitle1 => typography.titleMedium;
  @Deprecated('Use titleSmallFamily instead')
  String get subtitle2Family => typography.titleSmallFamily;
  @Deprecated('Use titleSmall instead')
  TextStyle get subtitle2 => typography.titleSmall;
  @Deprecated('Use bodyMediumFamily instead')
  String get bodyText1Family => typography.bodyMediumFamily;
  @Deprecated('Use bodyMedium instead')
  TextStyle get bodyText1 => typography.bodyMedium;
  @Deprecated('Use bodySmallFamily instead')
  String get bodyText2Family => typography.bodySmallFamily;
  @Deprecated('Use bodySmall instead')
  TextStyle get bodyText2 => typography.bodySmall;

  String get displayLargeFamily => typography.displayLargeFamily;
  TextStyle get displayLarge => typography.displayLarge;
  String get displayMediumFamily => typography.displayMediumFamily;
  TextStyle get displayMedium => typography.displayMedium;
  String get displaySmallFamily => typography.displaySmallFamily;
  TextStyle get displaySmall => typography.displaySmall;
  String get headlineLargeFamily => typography.headlineLargeFamily;
  TextStyle get headlineLarge => typography.headlineLarge;
  String get headlineMediumFamily => typography.headlineMediumFamily;
  TextStyle get headlineMedium => typography.headlineMedium;
  String get headlineSmallFamily => typography.headlineSmallFamily;
  TextStyle get headlineSmall => typography.headlineSmall;
  String get titleLargeFamily => typography.titleLargeFamily;
  TextStyle get titleLarge => typography.titleLarge;
  String get titleMediumFamily => typography.titleMediumFamily;
  TextStyle get titleMedium => typography.titleMedium;
  String get titleSmallFamily => typography.titleSmallFamily;
  TextStyle get titleSmall => typography.titleSmall;
  String get labelLargeFamily => typography.labelLargeFamily;
  TextStyle get labelLarge => typography.labelLarge;
  String get labelMediumFamily => typography.labelMediumFamily;
  TextStyle get labelMedium => typography.labelMedium;
  String get labelSmallFamily => typography.labelSmallFamily;
  TextStyle get labelSmall => typography.labelSmall;
  String get bodyLargeFamily => typography.bodyLargeFamily;
  TextStyle get bodyLarge => typography.bodyLarge;
  String get bodyMediumFamily => typography.bodyMediumFamily;
  TextStyle get bodyMedium => typography.bodyMedium;
  String get bodySmallFamily => typography.bodySmallFamily;
  TextStyle get bodySmall => typography.bodySmall;

  Typography get typography => ThemeTypography(this);
}

class LightModeTheme extends FlutterFlowTheme {
  @Deprecated('Use primary instead')
  Color get primaryColor => primary;
  @Deprecated('Use secondary instead')
  Color get secondaryColor => secondary;
  @Deprecated('Use tertiary instead')
  Color get tertiaryColor => tertiary;

  late Color primary = const Color(0xFF1B1E25);
  late Color secondary = const Color(0xFF5148E7);
  late Color tertiary = const Color(0xFF14181B);
  late Color alternate = const Color(0xFF14181B);
  late Color primaryText = const Color(0xFF1B1E25);
  late Color secondaryText = const Color(0xFF272A31);
  late Color primaryBackground = const Color(0xFFFFFFFF);
  late Color secondaryBackground = const Color(0xFFFFFFFF);
  late Color accent1 = const Color(0xFF1B1E25);
  late Color accent2 = const Color(0xFF5148E7);
  late Color accent3 = const Color(0x4DACC420);
  late Color accent4 = const Color(0xFFF7F7F8);
  late Color success = const Color(0xFF27AE52);
  late Color warning = const Color(0xFFFC964D);
  late Color error = const Color(0xFFEE4444);
  late Color info = const Color(0xFFFFFFFF);

  late Color black = Color(0xFF000000);
  late Color white = Color(0xFFFFFFFF);
  late Color placeholder = Color(0xFF94979E);
  late Color helpText = Color(0xFF61646B);
  late Color grayBodytext = Color(0xFF45484F);
  late Color iconPrimary = Color(0xFF6265F0);
  late Color badgeWarningBG = Color(0xFFFED8AA);
  late Color badgeWarningText = Color(0xFF6D1A07);
  late Color alpha1 = Color(0x10000000);
  late Color alpha2 = Color(0x32000000);
  late Color alpha3 = Color(0x7F000000);
  late Color alpha4 = Color(0xC0000000);
  late Color errorText = Color(0xFFB51D1D);
  late Color errorIcon = Color(0xFFD92625);
  late Color successText = Color(0xFF077F2E);
  late Color successIcon = Color(0xFF25A244);
  late Color warningText = Color(0xFF933C0E);
  late Color warningIcon = Color(0xFF933C0E);
  late Color borderSecondary = Color(0xFFC9CDD2);
  late Color borderBottomColor = Color(0xFFE0E3E6);
  late Color grayBodyText = Color(0xFF45484F);
  late Color customColor1 = Color(0xFF50730E);
  late Color warning50 = Color(0xFFFEF9EA);
  late Color warningBorder = Color(0xFFFDD14D);
  late Color indigo50 = Color(0xFFEEF2FF);
}

abstract class Typography {
  String get displayLargeFamily;
  TextStyle get displayLarge;
  String get displayMediumFamily;
  TextStyle get displayMedium;
  String get displaySmallFamily;
  TextStyle get displaySmall;
  String get headlineLargeFamily;
  TextStyle get headlineLarge;
  String get headlineMediumFamily;
  TextStyle get headlineMedium;
  String get headlineSmallFamily;
  TextStyle get headlineSmall;
  String get titleLargeFamily;
  TextStyle get titleLarge;
  String get titleMediumFamily;
  TextStyle get titleMedium;
  String get titleSmallFamily;
  TextStyle get titleSmall;
  String get labelLargeFamily;
  TextStyle get labelLarge;
  String get labelMediumFamily;
  TextStyle get labelMedium;
  String get labelSmallFamily;
  TextStyle get labelSmall;
  String get bodyLargeFamily;
  TextStyle get bodyLarge;
  String get bodyMediumFamily;
  TextStyle get bodyMedium;
  String get bodySmallFamily;
  TextStyle get bodySmall;
}

class ThemeTypography extends Typography {
  ThemeTypography(this.theme);

  final FlutterFlowTheme theme;

  String get displayLargeFamily => 'SFPRO';
  TextStyle get displayLarge => TextStyle(
        fontFamily: 'SFPRO',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
      );
  String get displayMediumFamily => 'SFPRO';
  TextStyle get displayMedium => TextStyle(
        fontFamily: 'SFPRO',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 45.0,
      );
  String get displaySmallFamily => 'SFPRO';
  TextStyle get displaySmall => TextStyle(
        fontFamily: 'SFPRO',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 36.0,
      );
  String get headlineLargeFamily => 'SFPRO';
  TextStyle get headlineLarge => TextStyle(
        fontFamily: 'SFPRO',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 32.0,
      );
  String get headlineMediumFamily => 'SFPRO';
  TextStyle get headlineMedium => TextStyle(
        fontFamily: 'SFPRO',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 32.0,
      );
  String get headlineSmallFamily => 'SFPRO';
  TextStyle get headlineSmall => TextStyle(
        fontFamily: 'SFPRO',
        color: theme.primaryText,
        fontWeight: FontWeight.bold,
        fontSize: 24.0,
      );
  String get titleLargeFamily => 'SFPRO';
  TextStyle get titleLarge => TextStyle(
        fontFamily: 'SFPRO',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 20.0,
        fontStyle: FontStyle.normal,
      );
  String get titleMediumFamily => 'SFPRO';
  TextStyle get titleMedium => TextStyle(
        fontFamily: 'SFPRO',
        color: theme.info,
        fontWeight: FontWeight.w500,
        fontSize: 16.0,
      );
  String get titleSmallFamily => 'SFPRO';
  TextStyle get titleSmall => TextStyle(
        fontFamily: 'SFPRO',
        color: theme.info,
        fontWeight: FontWeight.normal,
        fontSize: 15.0,
      );
  String get labelLargeFamily => 'SFPRO';
  TextStyle get labelLarge => TextStyle(
        fontFamily: 'SFPRO',
        color: theme.secondaryText,
        fontWeight: FontWeight.w500,
        fontSize: 16.0,
      );
  String get labelMediumFamily => 'SFPRO';
  TextStyle get labelMedium => TextStyle(
        fontFamily: 'SFPRO',
        color: theme.secondaryText,
        fontWeight: FontWeight.w500,
        fontSize: 14.0,
      );
  String get labelSmallFamily => 'SFPRO';
  TextStyle get labelSmall => TextStyle(
        fontFamily: 'SFPRO',
        color: theme.secondaryText,
        fontWeight: FontWeight.w500,
        fontSize: 12.0,
      );
  String get bodyLargeFamily => 'SFPRO';
  TextStyle get bodyLarge => TextStyle(
        fontFamily: 'SFPRO',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 16.0,
      );
  String get bodyMediumFamily => 'SFPRO';
  TextStyle get bodyMedium => TextStyle(
        fontFamily: 'SFPRO',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 14.0,
      );
  String get bodySmallFamily => 'SFPRO';
  TextStyle get bodySmall => TextStyle(
        fontFamily: 'SFPRO',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 12.0,
      );
}

extension TextStyleHelper on TextStyle {
  TextStyle override({
    String? fontFamily,
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    double? letterSpacing,
    FontStyle? fontStyle,
    bool useGoogleFonts = true,
    TextDecoration? decoration,
    double? lineHeight,
  }) =>
      useGoogleFonts
          ? GoogleFonts.getFont(
              fontFamily!,
              color: color ?? this.color,
              fontSize: fontSize ?? this.fontSize,
              letterSpacing: letterSpacing ?? this.letterSpacing,
              fontWeight: fontWeight ?? this.fontWeight,
              fontStyle: fontStyle ?? this.fontStyle,
              decoration: decoration,
              height: lineHeight,
            )
          : copyWith(
              fontFamily: fontFamily,
              color: color,
              fontSize: fontSize,
              letterSpacing: letterSpacing,
              fontWeight: fontWeight,
              fontStyle: fontStyle,
              decoration: decoration,
              height: lineHeight,
            );
}
