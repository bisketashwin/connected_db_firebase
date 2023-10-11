import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

class CustomColorsAndFonts extends ThemeExtension<CustomColorsAndFonts> {
  const CustomColorsAndFonts({
    required this.primary,
    required this.secondary,
    required this.tertiary,
    required this.natural,
    required this.custom1,
    required this.custom2,
  });

  final Color? primary;
  final Color? secondary;
  final Color? tertiary;
  final Color? natural;
  final Color? custom1;
  final Color? custom2;

  @override
  CustomColorsAndFonts copyWith({
    Color? primary,
    Color? secondary,
    Color? tertiary,
    Color? natural,
    Color? custom1,
    Color? custom2,
  }) {
    return CustomColorsAndFonts(
      primary: primary ?? this.primary,
      secondary: secondary ?? this.secondary,
      tertiary: tertiary ?? this.tertiary,
      natural: natural ?? this.natural,
      custom1: custom1 ?? this.custom1,
      custom2: custom2 ?? this.custom2,
    );
  }

  @override
  CustomColorsAndFonts lerp(
      ThemeExtension<CustomColorsAndFonts>? other, double t) {
    if (other is! CustomColorsAndFonts) {
      return this;
    }

    return CustomColorsAndFonts(
      primary: Color.lerp(primary, other.primary, t),
      secondary: Color.lerp(secondary, other.secondary, t),
      tertiary: Color.lerp(tertiary, other.tertiary, t),
      natural: Color.lerp(natural, other.natural, t),
      custom1: Color.lerp(custom1, other.custom1, t),
      custom2: Color.lerp(custom2, other.custom2, t),
    );
  }
}

final ThemeData myTheme = ThemeData(
  primarySwatch: Colors.amber,
  extensions: const [
    CustomColorsAndFonts(
      primary: Colors.red,
      secondary: Colors.green,
      tertiary: Colors.yellow,
      natural: Colors.brown,
      custom1: Colors.black,
      custom2: Colors.white,
    ),
  ],
);
