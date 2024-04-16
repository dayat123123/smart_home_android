import 'package:flutter/material.dart';
import 'package:flutter_iconoir_ttf/flutter_iconoir_ttf.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_home_app/app/themes/theme.dart';
import 'package:smart_home_app/shared/widgets/card.dart';

class AllDevicesMenu extends StatefulWidget {
  const AllDevicesMenu({super.key});

  @override
  State<AllDevicesMenu> createState() => _AllDevicesMenuState();
}

class _AllDevicesMenuState extends State<AllDevicesMenu> {
  bool isActiveSL = false;
  bool isActiveAC = false;
  bool isActiveMS = false;
  bool isActiveDL = false;
  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    final ThemeColors themeColors = themeData.extension<ThemeColors>()!;

    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: ContainerWidget(
                  activeColor: themeColors.neutral,
                  onChanged: (p0) {
                    isActiveSL = !isActiveSL;
                    setState(() {});
                  },
                  isActive: isActiveSL,
                  iconwidget: const Icon(IconoirIcons.lightBulb),
                  iconPairing: const Icon(Icons.wifi),
                  themeColors: themeColors,
                  title: "Smart Lighting",
                  subtitle: "Bedroom"),
            ),
            SizedBox(width: 15.w),
            Expanded(
              child: ContainerWidget(
                activeColor: Colors.cyan,
                onChanged: (p0) {
                  isActiveAC = !isActiveAC;
                  setState(() {});
                },
                isActive: isActiveAC,
                iconwidget: const Icon(IconoirIcons.airConditioner),
                iconPairing: const Icon(Icons.bluetooth),
                themeColors: themeColors,
                title: "Air Conditioner",
                subtitle: "Living Room",
              ),
            ),
          ],
        ),
        const SizedBox(height: 15),
        Row(
          children: [
            Expanded(
              child: ContainerWidget(
                  activeColor: Colors.blue,
                  onChanged: (p0) {
                    isActiveMS = !isActiveMS;
                    setState(() {});
                  },
                  isActive: isActiveMS,
                  iconwidget: const Icon(Icons.kitchen),
                  iconPairing: const Icon(Icons.bluetooth),
                  themeColors: themeColors,
                  title: "Motion Sensor",
                  subtitle: "Kitchen"),
            ),
            SizedBox(width: 15.w),
            Expanded(
              child: ContainerWidget(
                activeColor: Colors.purple,
                onChanged: (p0) {
                  isActiveDL = !isActiveDL;
                  setState(() {});
                },
                isActive: isActiveDL,
                iconwidget: const Icon(IconoirIcons.desk),
                iconPairing: const Icon(Icons.wifi),
                themeColors: themeColors,
                title: "Desk Lamp",
                subtitle: "Bedroom",
              ),
            ),
          ],
        ),
      ],
    );
  }
}
