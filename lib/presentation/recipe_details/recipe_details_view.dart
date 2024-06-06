import 'package:flutter/material.dart';
import 'package:task/presentation/recipe_details/widget/body.dart';

class RecipeDetailsViewScreen extends StatelessWidget {
  const RecipeDetailsViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(child: Scaffold(
        body: RecipeDetailsBody(),
    ));
  }
}
