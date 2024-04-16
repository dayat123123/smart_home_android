import 'dart:async';

import 'package:get/get.dart';
import 'package:smart_home_app/route/route_name.dart';

class SplashScreenController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    Timer(const Duration(seconds: 1), () {
      Get.offNamed(RouteNames.home);
    });
  }
}

class SplashScreenBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(SplashScreenController());
  }
}
