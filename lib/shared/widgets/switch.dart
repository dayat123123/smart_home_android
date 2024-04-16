import 'package:flutter/material.dart';
import 'package:smart_home_app/app/themes/theme.dart';

class CustomSwitcher extends StatelessWidget {
  final bool value;
  final ValueChanged<bool> onChanged;
  final double width;
  final double height;
  const CustomSwitcher({
    super.key,
    required this.value,
    required this.onChanged,
    required this.width,
    required this.height,
  });
  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    final ThemeColors themeColors = themeData.extension<ThemeColors>()!;

    return Transform.scale(
      scale: height / 35.0,
      child: SizedBox(
        width: width,
        height: height,
        child: Switch(
            value: value,
            onChanged: onChanged,
            activeColor: themeColors.cursorColor),
      ),
    );
  }
}
