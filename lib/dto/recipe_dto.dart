import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'ingredient_dto.dart';

part 'recipe_dto.freezed.dart';
part 'recipe_dto.g.dart';

@freezed
class RecipeDTO with _$RecipeDTO {
  factory RecipeDTO({
    required int id,
    required String name,
    required List<IngredientDTO> ingredients_distributions,
    required int cook_time_mins,
    required int? prep_time_mins,
    required double servings,
    required double calories,
    required double proteins,
    required double fats,
    required double carbohydrates,
  }) = _RecipeDTO;

  factory RecipeDTO.fromJson(Map<String, Object?> json) =>
      _$RecipeDTOFromJson(json);
}
