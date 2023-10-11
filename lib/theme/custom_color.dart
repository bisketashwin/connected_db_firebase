import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter/material.dart';

const customcolor1 = Color(0xFF3DEEB7);
const customcolor2 = Color(0xFFACE7F3);
const customcolor3 = Color(0xFFFF8E06);

CustomColors lightCustomColors = const CustomColors(
  sourceCustomcolor1: Color(0xFF3DEEB7),
  customcolor1: Color(0xFF006C4F),
  onCustomcolor1: Color(0xFFFFFFFF),
  customcolor1Container: Color(0xFF53FDC5),
  onCustomcolor1Container: Color(0xFF002116),
  sourceCustomcolor2: Color(0xFFACE7F3),
  customcolor2: Color(0xFF006876),
  onCustomcolor2: Color(0xFFFFFFFF),
  customcolor2Container: Color(0xFF9EEFFF),
  onCustomcolor2Container: Color(0xFF001F24),
  sourceCustomcolor3: Color(0xFFFF8E06),
  customcolor3: Color(0xFF904D00),
  onCustomcolor3: Color(0xFFFFFFFF),
  customcolor3Container: Color(0xFFFFDCC2),
  onCustomcolor3Container: Color(0xFF2E1500),
);

CustomColors darkCustomColors = const CustomColors(
  sourceCustomcolor1: Color(0xFF3DEEB7),
  customcolor1: Color(0xFF23E0AA),
  onCustomcolor1: Color(0xFF003828),
  customcolor1Container: Color(0xFF00513B),
  onCustomcolor1Container: Color(0xFF53FDC5),
  sourceCustomcolor2: Color(0xFFACE7F3),
  customcolor2: Color(0xFF50D7EE),
  onCustomcolor2: Color(0xFF00363E),
  customcolor2Container: Color(0xFF004E59),
  onCustomcolor2Container: Color(0xFF9EEFFF),
  sourceCustomcolor3: Color(0xFFFF8E06),
  customcolor3: Color(0xFFFFB77C),
  onCustomcolor3: Color(0xFF4D2700),
  customcolor3Container: Color(0xFF6D3900),
  onCustomcolor3Container: Color(0xFFFFDCC2),
);

/// Defines a set of custom colors, each comprised of 4 complementary tones.
///
/// See also:
///   * <https://m3.material.io/styles/color/the-color-system/custom-colors>
@immutable
class CustomColors extends ThemeExtension<CustomColors> {
  const CustomColors({
    required this.sourceCustomcolor1,
    required this.customcolor1,
    required this.onCustomcolor1,
    required this.customcolor1Container,
    required this.onCustomcolor1Container,
    required this.sourceCustomcolor2,
    required this.customcolor2,
    required this.onCustomcolor2,
    required this.customcolor2Container,
    required this.onCustomcolor2Container,
    required this.sourceCustomcolor3,
    required this.customcolor3,
    required this.onCustomcolor3,
    required this.customcolor3Container,
    required this.onCustomcolor3Container,
  });

  final Color? sourceCustomcolor1;
  final Color? customcolor1;
  final Color? onCustomcolor1;
  final Color? customcolor1Container;
  final Color? onCustomcolor1Container;
  final Color? sourceCustomcolor2;
  final Color? customcolor2;
  final Color? onCustomcolor2;
  final Color? customcolor2Container;
  final Color? onCustomcolor2Container;
  final Color? sourceCustomcolor3;
  final Color? customcolor3;
  final Color? onCustomcolor3;
  final Color? customcolor3Container;
  final Color? onCustomcolor3Container;

  @override
  CustomColors copyWith({
    Color? sourceCustomcolor1,
    Color? customcolor1,
    Color? onCustomcolor1,
    Color? customcolor1Container,
    Color? onCustomcolor1Container,
    Color? sourceCustomcolor2,
    Color? customcolor2,
    Color? onCustomcolor2,
    Color? customcolor2Container,
    Color? onCustomcolor2Container,
    Color? sourceCustomcolor3,
    Color? customcolor3,
    Color? onCustomcolor3,
    Color? customcolor3Container,
    Color? onCustomcolor3Container,
  }) {
    return CustomColors(
      sourceCustomcolor1: sourceCustomcolor1 ?? this.sourceCustomcolor1,
      customcolor1: customcolor1 ?? this.customcolor1,
      onCustomcolor1: onCustomcolor1 ?? this.onCustomcolor1,
      customcolor1Container:
          customcolor1Container ?? this.customcolor1Container,
      onCustomcolor1Container:
          onCustomcolor1Container ?? this.onCustomcolor1Container,
      sourceCustomcolor2: sourceCustomcolor2 ?? this.sourceCustomcolor2,
      customcolor2: customcolor2 ?? this.customcolor2,
      onCustomcolor2: onCustomcolor2 ?? this.onCustomcolor2,
      customcolor2Container:
          customcolor2Container ?? this.customcolor2Container,
      onCustomcolor2Container:
          onCustomcolor2Container ?? this.onCustomcolor2Container,
      sourceCustomcolor3: sourceCustomcolor3 ?? this.sourceCustomcolor3,
      customcolor3: customcolor3 ?? this.customcolor3,
      onCustomcolor3: onCustomcolor3 ?? this.onCustomcolor3,
      customcolor3Container:
          customcolor3Container ?? this.customcolor3Container,
      onCustomcolor3Container:
          onCustomcolor3Container ?? this.onCustomcolor3Container,
    );
  }

  @override
  CustomColors lerp(ThemeExtension<CustomColors>? other, double t) {
    if (other is! CustomColors) {
      return this;
    }
    return CustomColors(
      sourceCustomcolor1:
          Color.lerp(sourceCustomcolor1, other.sourceCustomcolor1, t),
      customcolor1: Color.lerp(customcolor1, other.customcolor1, t),
      onCustomcolor1: Color.lerp(onCustomcolor1, other.onCustomcolor1, t),
      customcolor1Container:
          Color.lerp(customcolor1Container, other.customcolor1Container, t),
      onCustomcolor1Container:
          Color.lerp(onCustomcolor1Container, other.onCustomcolor1Container, t),
      sourceCustomcolor2:
          Color.lerp(sourceCustomcolor2, other.sourceCustomcolor2, t),
      customcolor2: Color.lerp(customcolor2, other.customcolor2, t),
      onCustomcolor2: Color.lerp(onCustomcolor2, other.onCustomcolor2, t),
      customcolor2Container:
          Color.lerp(customcolor2Container, other.customcolor2Container, t),
      onCustomcolor2Container:
          Color.lerp(onCustomcolor2Container, other.onCustomcolor2Container, t),
      sourceCustomcolor3:
          Color.lerp(sourceCustomcolor3, other.sourceCustomcolor3, t),
      customcolor3: Color.lerp(customcolor3, other.customcolor3, t),
      onCustomcolor3: Color.lerp(onCustomcolor3, other.onCustomcolor3, t),
      customcolor3Container:
          Color.lerp(customcolor3Container, other.customcolor3Container, t),
      onCustomcolor3Container:
          Color.lerp(onCustomcolor3Container, other.onCustomcolor3Container, t),
    );
  }

  /// Returns an instance of [CustomColors] in which the following custom
  /// colors are harmonized with [dynamic]'s [ColorScheme.primary].
  ///   * [CustomColors.sourceCustomcolor1]
  ///   * [CustomColors.customcolor1]
  ///   * [CustomColors.onCustomcolor1]
  ///   * [CustomColors.customcolor1Container]
  ///   * [CustomColors.onCustomcolor1Container]
  ///   * [CustomColors.sourceCustomcolor2]
  ///   * [CustomColors.customcolor2]
  ///   * [CustomColors.onCustomcolor2]
  ///   * [CustomColors.customcolor2Container]
  ///   * [CustomColors.onCustomcolor2Container]
  ///   * [CustomColors.sourceCustomcolor3]
  ///   * [CustomColors.customcolor3]
  ///   * [CustomColors.onCustomcolor3]
  ///   * [CustomColors.customcolor3Container]
  ///   * [CustomColors.onCustomcolor3Container]
  ///
  /// See also:
  ///   * <https://m3.material.io/styles/color/the-color-system/custom-colors#harmonization>
  CustomColors harmonized(ColorScheme dynamic) {
    return copyWith(
      sourceCustomcolor1: sourceCustomcolor1!.harmonizeWith(dynamic.primary),
      customcolor1: customcolor1!.harmonizeWith(dynamic.primary),
      onCustomcolor1: onCustomcolor1!.harmonizeWith(dynamic.primary),
      customcolor1Container:
          customcolor1Container!.harmonizeWith(dynamic.primary),
      onCustomcolor1Container:
          onCustomcolor1Container!.harmonizeWith(dynamic.primary),
      sourceCustomcolor2: sourceCustomcolor2!.harmonizeWith(dynamic.primary),
      customcolor2: customcolor2!.harmonizeWith(dynamic.primary),
      onCustomcolor2: onCustomcolor2!.harmonizeWith(dynamic.primary),
      customcolor2Container:
          customcolor2Container!.harmonizeWith(dynamic.primary),
      onCustomcolor2Container:
          onCustomcolor2Container!.harmonizeWith(dynamic.primary),
      sourceCustomcolor3: sourceCustomcolor3!.harmonizeWith(dynamic.primary),
      customcolor3: customcolor3!.harmonizeWith(dynamic.primary),
      onCustomcolor3: onCustomcolor3!.harmonizeWith(dynamic.primary),
      customcolor3Container:
          customcolor3Container!.harmonizeWith(dynamic.primary),
      onCustomcolor3Container:
          onCustomcolor3Container!.harmonizeWith(dynamic.primary),
    );
  }
}
