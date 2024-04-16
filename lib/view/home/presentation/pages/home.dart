import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_home_app/app/commons.dart';
import 'package:smart_home_app/view/home/presentation/pages/tabMenus/alldevices.dart';
import 'package:smart_home_app/view/home/presentation/widgets/appbar_widget.dart';
import 'package:smart_home_app/view/home/presentation/widgets/horizontal_tab.dart';
import 'package:smart_home_app/view/home/presentation/widgets/temprature_widget.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});
  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const AppBarWidget(),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const TempratureWidget(),
                  SizedBox(height: 20.h),
                  HorizontalTab(
                      selectedIndex: selectedIndex,
                      onTap: (p0) {
                        if (selectedIndex != p0) {
                          selectedIndex = p0;
                          setState(() {});
                        }
                      }),
                  SizedBox(height: 20.h),
                  selectedMenushow()
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget selectedMenushow() {
    Widget wid;
    switch (selectedIndex) {
      case 0:
        wid = const AllDevicesMenu();
        break;
      default:
        wid = Container();
        break;
    }
    return wid;
  }
}
