import 'dart:convert';

import 'package:get/get.dart';
import 'package:task/models/all_recipes/all_recipes_model.dart';

import '../../api/api_provider.dart';
import '../../api/config.dart';

class AllRecipeRepository extends GetxService {
  ApiProvider apiProvider = Get.find<ApiProvider>();

  Future<AllRecipesModel> getAllRecipe() async {
    var response = await apiProvider.getRequest(
      APIURLS.allRecipes,
    );
    if (response.statusCode == 200) {
      return AllRecipesModel.fromJson(jsonDecode(response.body));
    } else {
      throw 'Failed to get AllRecipes';
    }
  }


  Future<Recipes> getAllRecipeByID({
    required int recipeId,

  }) async {
    var response = await apiProvider.getRequest(
      '${APIURLS.allRecipes}/$recipeId',
    );
    if (response.statusCode == 200) {
      return Recipes.fromJson(jsonDecode(response.body));
    } else {
      throw 'Failed to get Recipes';
    }
  }
}
