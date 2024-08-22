import 'package:sberlab/dto/recipe_dto.dart';
import 'package:sberlab/entity/recipe.dart';
import 'package:sberlab/mappers/ingredient_mapper.dart';

class RecipeMapper{
  @override
  Recipe fromDto(RecipeDTO dto) {
    return Recipe(
      id: dto.id,
      name: dto.name,
      servings: dto.servings,
      proteins: dto.proteins,
      fats: dto.fats,
      carbohydrates: dto.carbohydrates,
      calories: dto.calories,
      ingredients: dto.ingredients_distributions.map((ingredient_dto) => IngredientMapper().fromDto(ingredient_dto)).toList(),
      prepTimeMins: dto.prep_time_mins,
      cookTimeMins: dto.cook_time_mins,
    );
  }

  @override
  RecipeDTO toDto(Recipe entity) {
    return RecipeDTO(
      id: entity.id,
      name: entity.name,
      servings: entity.servings,
      proteins: entity.proteins,
      fats: entity.fats,
      carbohydrates: entity.carbohydrates,
      calories: entity.calories,
      ingredients_distributions: entity.ingredients.map((ingredient_dto) => IngredientMapper().toDto(ingredient_dto)).toList(),
      prep_time_mins: entity.prepTimeMins,
      cook_time_mins: entity.cookTimeMins,
    );
  }
}
