import 'package:flutter/material.dart';
import 'package:food_recipe/feature/home/model/recipe_model.dart';

class RecipeDetailPage extends StatelessWidget {
  final RecipeModel recipe;

  const RecipeDetailPage({Key? key, required this.recipe}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(recipe.name),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(recipe.image), // Assuming you're using local assets
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(recipe.name, style: Theme.of(context).textTheme.headline5),
            ),
            Text("Category: ${recipe.category}"),
            Text("Duration: ${recipe.duration}"),
            Text("Serving: ${recipe.serving}"),
          ],
        ),
      ),
    );
  }
}

