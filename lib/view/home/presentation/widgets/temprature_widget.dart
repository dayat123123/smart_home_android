import 'package:flutter/material.dart';
import 'package:flutter_iconoir_ttf/flutter_iconoir_ttf.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_home_app/app/commons.dart';
import 'package:smart_home_app/app/themes/theme.dart';

class TempratureWidget extends StatelessWidget {
  const TempratureWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    final ThemeColors themeColors = themeData.extension<ThemeColors>()!;
    return Container(
      height: 55.h,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          color: themeColors.appContainerBackground),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
              flex: 1,
              child: Container(
                  decoration: BoxDecoration(
                      border: Border(right: BorderSide(width: 0.5.w))),
                  alignment: Alignment.center,
                  child: widget(children: [
                    Icon(
                      Icons.light_mode_rounded,
                      color: themeData.primaryColor,
                    ),
                    SizedBox(width: 5.w),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("sunlight", style: TextStyle(fontSize: 11.sp)),
                        Text("75%", style: TextStyle(fontSize: 11.sp))
                      ],
                    )
                  ]))),
          Expanded(
              flex: 1,
              child: Container(
                  alignment: Alignment.center,
                  child: widget(children: [
                    Icon(
                      Icons.power_settings_new_sharp,
                      color: themeColors.upward,
                    ),
                    SizedBox(width: 5.w),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text("energy", style: TextStyle(fontSize: 11.sp)),
                        Text("60Kwh", style: TextStyle(fontSize: 11.sp))
                      ],
                    )
                  ]))),
          Expanded(
              flex: 1,
              child: Container(
                  decoration: BoxDecoration(
                      border: Border(left: BorderSide(width: 0.5.w))),
                  alignment: Alignment.center,
                  child: widget(children: [
                    Icon(
                      IconoirIcons.temperatureLow,
                      color: themeColors.neutral,
                    ),
                    SizedBox(width: 5.w),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text("temp", style: TextStyle(fontSize: 11.sp)),
                        Text("24'C", style: TextStyle(fontSize: 11.sp))
                      ],
                    )
                  ]))),
        ],
      ),
    );
  }

  Widget widget({required List<Widget> children}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: children,
    );
  }
}
