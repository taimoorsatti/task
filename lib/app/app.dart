import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:task/presentation/splash/splash_view.dart';
import 'package:task/routing/get_routes.dart';


import '../routing/routes.dart';


class TaskApp extends StatelessWidget {
  const TaskApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return ScreenUtilInit(
        minTextAdapt: true,
        designSize: const Size(379, 815),
        builder: (context, child) {
          return GetMaterialApp(
            title: "virtual help",
            debugShowCheckedModeBanner: false,
            onGenerateRoute: RouteGenerator.generateRoute,
            initialRoute: AppRoutes.splash,
            routes: {
              AppRoutes.splash:(context)=>  const SplashViewScreen(),
            },
          );
        });
  }
}
