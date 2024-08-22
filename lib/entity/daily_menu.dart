import 'package:sberlab/entity/product.dart';
import 'package:sberlab/entity/recipe.dart';
import 'package:sberlab/entity/total_params.dart';

class DailyMenu {
  final String date;
  final Meal breakfastMeals;
  final Meal launchMeals;
  final Meal dinnerMeals;
  final TotalParams params;

  DailyMenu({
    required this.date,
    required this.breakfastMeals,
    required this.launchMeals,
    required this.dinnerMeals,
    required this.params,
  });
}

class Meal {
  final List<Recipe> recipes;
  final List<Product> products;
  final int kilocalories;
  final int fats;
  final int carbohydrates;
  final int proteins;

  Meal({
    required this.recipes,
    required this.products,
    required this.kilocalories,
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
