import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_home_app/app/commons.dart';
import 'package:smart_home_app/app/themes/theme.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    final ThemeColors themeColors = themeData.extension<ThemeColors>()!;
    String accountName = "Hidayat";
    return SliverAppBar(
      excludeHeaderSemantics: true,
      surfaceTintColor: Colors.transparent,
      backgroundColor: themeColors.appContainerBackground,
      elevation: 0,
      centerTitle: true,
      toolbarHeight: 20.h,
      collapsedHeight: 30.h,
      expandedHeight: 50.h,
      floating: false,
      pinned: true,
      automaticallyImplyLeading: false,
      title: const SizedBox(),
      forceElevated: true,
      flexibleSpace: FlexibleSpaceBar(
        titlePadding: EdgeInsets.only(left: 10.w, bottom: 10.w, right: 10),
        centerTitle: true,
        title: Row(
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Manage Home',
                    style: TextStyle(
                        fontSize: 11,
                        color: themeColors.micIcon.withOpacity(0.65))),
                RichText(
                    text: TextSpan(
                  text: "Hey, ",
                  style: TextStyle(
                      color: themeColors.micIcon.withOpacity(0.8),
                      fontSize: 11),
                  children: [
                    TextSpan(
                      text: accountName,
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: themeColors.micIcon),
                    )
                  ],
                )),
              ],
            ),
            const Spacer(),
            // Container(
            //     padding: const EdgeInsets.all(3),
            //     decoration: BoxDecoration(
            //         shape: BoxShape.circle,
            //         color: themeColors.unselectedLabel.withOpacity(0.6)),
            //     child: const Icon(Icons.people))
          ],
        ),
        stretchModes: const [StretchMode.fadeTitle],
      ),
    );
  }
}
