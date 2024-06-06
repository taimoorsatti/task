import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:task/routing/get_routes.dart';

import '../presentation/all_recipes/all_recipe_view.dart';
import '../routing/routes.dart';


class TaskApp extends StatelessWidget {
  const TaskApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return ScreenUtilInit(
        minTextAdapt: true,
        designSize: const Size(375, 812),
        builder: (context, child) {
          return GetMaterialApp(
            title: "Task",
            debugShowCheckedModeBanner: false,
            onGenerateRoute: RouteGenerator.generateRoute,
            initialRoute: AppRoutes.allRecipes,
            routes: {
              AppRoutes.allRecipes:(context)=>  AllRecipeViewScreen(),
            },
          );
        });
  }
}
