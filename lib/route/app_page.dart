import 'package:get/get.dart';
import 'package:smart_home_app/route/route_name.dart';
import 'package:smart_home_app/view/home/presentation/pages/home.dart';
import 'package:smart_home_app/view/splash/controller/splashscreen_controller.dart';
import 'package:smart_home_app/view/splash/presentation/pages/splashscreen.dart';

class AppPages {
  AppPages._();

  static final routes = [
    GetPage(
      binding: SplashScreenBindings(),
      name: RouteNames.root,
      page: () => const SplashScreen(),
    ),
    GetPage(
      name: RouteNames.home,
      page: () => const HomeView(),
    ),
    GetPage(
      name: RouteNames.landing,
      page: () => const HomeView(),
    ),
  ];
}
