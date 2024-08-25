import 'package:sberlab/entity/product.dart';
import 'package:sberlab/entity/recipe.dart';
import 'package:sberlab/entity/total_params.dart';

class DailyMenu {
  DateTime date;
  Meal breakfastMeals;
  Meal launchMeals;
  Meal dinnerMeals;
  TotalParams params;

  DailyMenu({
    required this.date,
    required this.breakfastMeals,
    required this.launchMeals,
    required this.dinnerMeals,
    required this.params,
  });
}

class Meal {
  List<Recipe> recipes;
  List<Product> products;
  final int calories;
  final int fats;
  final int carbohydrates;
  final int proteins;

  Meal({
    required this.recipes,
    required this.products,
    required this.calories,
    required this.fats,
    required this.carbohydrates,
    required this.proteins,
  });
}

enum MealType {
  breakfast,
  launch,
  dinner,
}
