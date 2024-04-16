import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_home_app/app/commons.dart';
import 'package:smart_home_app/app/themes/theme.dart';

class HorizontalTab extends StatelessWidget {
  const HorizontalTab(
      {super.key, required this.selectedIndex, required this.onTap});
  final int selectedIndex;
  final void Function(int) onTap;
  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    final ThemeColors themeColors = themeData.extension<ThemeColors>()!;
    List<String> listmenu = [
      "All Devices",
      "Living Room",
      "Bedroom",
      "Bathroom"
    ];
    return SizedBox(
      height: 32.h,
      width: double.infinity,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: List.generate(
            growable: true,
            listmenu.length,
            (index) => menuWidget(
                  themeColors: themeColors,
                  context: context,
                  index: index,
                  name: listmenu[index],
                )),
      ),
    );
  }

  Widget menuWidget(
      {required String name,
      required int index,
      required BuildContext context,
      required ThemeColors themeColors}) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      child: TextButton(
        onPressed: () {
          onTap(index);
        },
        style: ButtonStyle(
            foregroundColor: selectedIndex != index
                ? MaterialStatePropertyAll(themeColors.micIcon)
                : MaterialStatePropertyAll(themeColors.appContainerBackground),
            backgroundColor: selectedIndex == index
                ? MaterialStatePropertyAll(Theme.of(context).primaryColor)
                : MaterialStatePropertyAll(themeColors.border)),
        child: Text(name),
      ),
    );
  }
}
