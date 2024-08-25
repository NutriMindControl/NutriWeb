import 'package:sberlab/dto/meal_dto.dart';
import 'package:sberlab/entity/daily_menu.dart';
import 'package:sberlab/mappers/product_mapper.dart';
import 'package:sberlab/mappers/recipe_mapper.dart';

class MealMapper{
  @override
  Meal fromDto(MealDTO dto) {
    return Meal(
      proteins: dto.proteins,
      fats: dto.fats,
      carbohydrates: dto.carbohydrates,
      calories: dto.calories,
      recipes: dto.recipes.map((recipe_dto) => RecipeMapper().fromDto(recipe_dto)).toList(),
      products: dto.products.map((product_dto) => ProductMapper().fromDto(product_dto)).toList(),
    );
  }

  @override
  MealDTO toDto(Meal entity) {
    return MealDTO(
      proteins: entity.proteins,
      fats: entity.fats,
      carbohydrates: entity.carbohydrates,
      calories: entity.calories,
      recipes: entity.recipes.map((recipe_dto) => RecipeMapper().toDto(recipe_dto)).toList(),
      products: entity.products.map((product_dto) => ProductMapper().toDto(product_dto)).toList(),
    );
  }
}
