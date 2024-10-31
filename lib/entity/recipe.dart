import 'ingredient.dart';

class Recipe {
  final int id;
  final String name;
  final List<Ingredient> ingredients;
  final String? prepTimeMins;
  final int cookTimeMins;
  final double servings;
  final double calories;
  final double proteins;
  final double fats;
  final double carbohydrates;

  Recipe({
    required this.id,
    required this.name,
    required this.ingredients,
    required this.servings,
    required this.calories,
    required this.proteins,
    required this.fats,
    required this.carbohydrates,
    required this.cookTimeMins,
    this.prepTimeMins,
  });
}
