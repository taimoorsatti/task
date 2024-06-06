import 'dart:developer';

import 'package:get/get.dart';
import 'package:task/data/repository/all_recipe/all_recipe_repo.dart';
import 'package:task/models/all_recipes/all_recipes_model.dart';
import 'package:task/presentation/recipe_details/recipe_details_view.dart';

class AllRecipeController extends GetxController {
  AllRecipeRepository recipeRepository = AllRecipeRepository();
  AllRecipesModel allRecipesModel = AllRecipesModel();

  Rx<List<Recipes>> listAllRecipe = Rx<List<Recipes>>([]);

  Rx<Recipes> currentRecipes =Recipes().obs;


  Rx<bool> isLoading = false.obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getAllRecipe();
  }

  getAllRecipe() async {
    try {
      isLoading.value = true;
      var res = await recipeRepository.getAllRecipe();
      if (res.total != 0) {
        allRecipesModel = res;
        listAllRecipe.value = allRecipesModel.recipes!;
        isLoading.value = false;
      } else {
        log("failed to load data");
        isLoading.value = false;
      }
    } catch (e) {
      log(e.toString());
      isLoading.value = false;
    }
  }



  getRecipeById(int recipeId) async {
    try {
      isLoading.value = true;
      var res = await recipeRepository.getAllRecipeByID(recipeId:recipeId );
      if (res != null) {
        currentRecipes.value  = res;
        isLoading.value = false;

      } else {
        log("failed to load data");
        isLoading.value = false;
      }
    } catch (e) {
      log(e.toString());
      isLoading.value = false;
    }
  }
}
