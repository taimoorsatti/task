import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/route_manager.dart';

import 'routing/routes.dart';
import 'utils/app_theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      useInheritedMediaQuery: false,
      builder: (context, child) {
        return GetMaterialApp(
          title: 'alpha',
          debugShowCheckedModeBanner: false,
          initialRoute: Routes().getSplashPage(),
          getPages: Routes().routeMap,
          theme: Apptheme.apptheme(),
          themeMode: ThemeMode.light,
          smartManagement: SmartManagement.full,
        );
      },
    );
  }
}
