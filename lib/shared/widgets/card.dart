import 'package:flutter/material.dart';
import 'package:smart_home_app/app/themes/theme.dart';
import 'package:smart_home_app/shared/widgets/switch.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget(
      {super.key,
      required this.themeColors,
      required this.title,
      required this.subtitle,
      required this.iconPairing,
      required this.iconwidget,
      required this.isActive,
      required this.onChanged,
      required this.activeColor});
  final ThemeColors themeColors;
  final String title;
  final String subtitle;
  final Icon iconPairing;
  final Icon iconwidget;
  final bool isActive;
  final void Function(bool) onChanged;
  final Color activeColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: isActive ? activeColor : themeColors.appContainerBackground,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [iconwidget, iconPairing],
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 15),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                    style: const TextStyle(fontWeight: FontWeight.bold)),
                Text(subtitle),
                const Divider(
                    height: 0, thickness: 0, color: Colors.transparent),
              ],
            ),
          ),
          const Divider(height: 5, thickness: 1),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(isActive ? "On" : "Off"),
              CustomSwitcher(
                value: isActive,
                onChanged: onChanged,
                width: 20,
                height: 20,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
