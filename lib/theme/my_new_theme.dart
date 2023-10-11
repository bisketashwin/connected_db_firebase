import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'custom_color.dart';

ThemeData myLightTheme = ThemeData(
  useMaterial3: true,
  colorScheme: lightColorScheme,
  textTheme: textTheme,

  ///CUSTOM COLOURS following https://oflutter.com/flutter-material-3-how-to-use-custom-colors/
  extensions: [lightCustomColors],
);
ThemeData myDarkTheme = ThemeData(
  useMaterial3: true,
  colorScheme: darkColorScheme,
  textTheme: textTheme,

  ///CUSTOM COLOURS following https://oflutter.com/flutter-material-3-how-to-use-custom-colors/
  extensions: [darkCustomColors],
);
const lightColorScheme = ColorScheme(
  brightness: Brightness.light,
  primary: Color(0xFF2C55C9),
  onPrimary: Color(0xFFFFFFFF),
  primaryContainer: Color(0xFFDCE1FF),
  onPrimaryContainer: Color(0xFF00164F),
  secondary: Color(0xFF006C4F),
  onSecondary: Color(0xFFFFFFFF),
  secondaryContainer: Color(0xFF7BF9CA),
  onSecondaryContainer: Color(0xFF002116),
  tertiary: Color(0xFF7E5700),
  onTertiary: Color(0xFFFFFFFF),
  tertiaryContainer: Color(0xFFFFDEAB),
  onTertiaryContainer: Color(0xFF271900),
  error: Color(0xFFBA1A1A),
  errorContainer: Color(0xFFFFDAD6),
  onError: Color(0xFFFFFFFF),
  onErrorContainer: Color(0xFF410002),
  background: Color(0xFFF8FDFF),
  onBackground: Color(0xFF001F25),
  surface: Color(0xFFF8FDFF),
  onSurface: Color(0xFF001F25),
  surfaceVariant: Color(0xFFE2E1EC),
  onSurfaceVariant: Color(0xFF45464F),
  outline: Color(0xFF767680),
  onInverseSurface: Color(0xFFD6F6FF),
  inverseSurface: Color(0xFF00363F),
  inversePrimary: Color(0xFFB6C4FF),
  shadow: Color(0xFF000000),
  surfaceTint: Color(0xFF2C55C9),
  outlineVariant: Color(0xFFC6C6D0),
  scrim: Color(0xFF000000),
);

const darkColorScheme = ColorScheme(
  brightness: Brightness.dark,
  primary: Color(0xFFB6C4FF),
  onPrimary: Color(0xFF00287E),
  primaryContainer: Color(0xFF003BB0),
  onPrimaryContainer: Color(0xFFDCE1FF),
  secondary: Color(0xFF5CDCAE),
  onSecondary: Color(0xFF003828),
  secondaryContainer: Color(0xFF00513B),
  onSecondaryContainer: Color(0xFF7BF9CA),
  tertiary: Color(0xFFFFBA32),
  onTertiary: Color(0xFF422C00),
  tertiaryContainer: Color(0xFF5F4100),
  onTertiaryContainer: Color(0xFFFFDEAB),
  error: Color(0xFFFFB4AB),
  errorContainer: Color(0xFF93000A),
  onError: Color(0xFF690005),
  onErrorContainer: Color(0xFFFFDAD6),
  background: Color(0xFF001F25),
  onBackground: Color(0xFFA6EEFF),
  surface: Color(0xFF001F25),
  onSurface: Color(0xFFA6EEFF),
  surfaceVariant: Color(0xFF45464F),
  onSurfaceVariant: Color(0xFFC6C6D0),
  outline: Color(0xFF90909A),
  onInverseSurface: Color(0xFF001F25),
  inverseSurface: Color(0xFFA6EEFF),
  inversePrimary: Color(0xFF2C55C9),
  shadow: Color(0xFF000000),
  surfaceTint: Color(0xFFB6C4FF),
  outlineVariant: Color(0xFF45464F),
  scrim: Color(0xFF000000),
);

var textTheme = TextTheme(
  //Display 57 45 36
  displayLarge: GoogleFonts.montserrat(fontWeight: FontWeight.w200),

  displayMedium: GoogleFonts.montserrat(fontWeight: FontWeight.w200),
  displaySmall: GoogleFonts.montserrat(fontWeight: FontWeight.w200),
  // displayLarge: const TextStyle(
  //   fontSize: 72,
  //   fontWeight: FontWeight.bold,
  // ),
  // Headline 32 28 24
  headlineLarge: GoogleFonts.montserrat(fontWeight: FontWeight.w200),
  headlineMedium: GoogleFonts.montserrat(fontWeight: FontWeight.w300),
  headlineSmall: GoogleFonts.montserrat(fontWeight: FontWeight.w300),
  // Title 22 16 14
  titleLarge: GoogleFonts.montserrat(fontWeight: FontWeight.w500),
  titleMedium: GoogleFonts.montserrat(fontWeight: FontWeight.w500),
  titleSmall: GoogleFonts.montserrat(fontWeight: FontWeight.w700),
  // body 16 14 12
  bodyLarge: GoogleFonts.notoSans(),
  bodyMedium: GoogleFonts.notoSans(),
  bodySmall: GoogleFonts.notoSans(),
);
// ColorScheme.fromSeed(
//     seedColor: Color(0xFF00D7CA),
//     background: Color(0xDDE1F0F7),
//     primary: Color(0xFF3DEEB7),
//     onPrimary: const Color(0x730A0DBA),
//     secondary: Color(0xFF135DFE),
//     onSecondary: const Color(0x730A0DBA),
//     tertiary: Colors.yellow,

//     // natural: Colors.brown,
//     // custom1: Colors.black,
//     // custom2: Colors.white,
//     brightness: Brightness.light,
//   ),