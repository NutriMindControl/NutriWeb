import 'ingredient.dart';

class Recipe {
  final int id;
  final String name;
  final List<Ingredient> ingredients;
  final int prepTimeMins;
  final int servings;
  final int? kilocalories;
  final int? proteins;
  final int? fats;
  final int? carbohydrates;

  Recipe({
    required this.id,
    required this.name,
    required this.ingredients,
    required this.servings,
    required this.prepTimeMins,
    this.kilocalories,
    this.proteins,
    this.fats,
    this.carbohydrates,
  });
}
