import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:smart_home_app/app/themes/theme.dart';
import 'package:smart_home_app/route/app_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) {
        return const MainApp();
      }));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (ctx, child) {
          ScreenUtil.init(ctx);
          return GetMaterialApp(
              debugShowCheckedModeBanner: false,
              color: Colors.transparent,
              theme: lightTheme,
              themeMode: ThemeMode.system,
              darkTheme: darkTheme,
              getPages: AppPages.routes);
        });
  }
}
