 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task/presentation/recipe_details/recipe_details_view.dart';

import 'package:task/routing/routes.dart';



 import 'package:page_transition/page_transition.dart';

import '../presentation/all_recipes/all_recipe_view.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {

    switch (settings.name) {


      case AppRoutes.allRecipes:
        return PageTransition(
          child:AllRecipeViewScreen() ,
          type: PageTransitionType.fade,
          duration: const Duration(microseconds: 2),
          childCurrent:AllRecipeViewScreen() ,
          settings: settings,
        );

      case AppRoutes.recipesDetails:
        return PageTransition(
          child:const RecipeDetailsViewScreen() ,
          type: PageTransitionType.fade,
          duration: const Duration(microseconds: 2),
          childCurrent:const RecipeDetailsViewScreen(),
          settings: settings,
        );


      default:
        return _errorRoute();
    }


  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Error'),
          ),
          body: const Center(
            child: Text('ERROR'),
          ),
        ),
      );
    });
  }
}
