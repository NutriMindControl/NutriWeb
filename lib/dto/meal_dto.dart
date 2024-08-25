import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sberlab/dto/product_dto.dart';
import 'package:sberlab/dto/recipe_dto.dart';

import 'ingredient_dto.dart';

part 'meal_dto.freezed.dart';
part 'meal_dto.g.dart';

@freezed
class MealDTO with _$MealDTO {
  factory MealDTO({
    required List<RecipeDTO> recipes,
    required List<ProductDTO> products,
    required int calories,
    required int proteins,
    required int fats,
    required int carbohydrates,
  }) = _MealDTO;

  factory MealDTO.fromJson(Map<String, Object?> json) =>
      _$MealDTOFromJson(json);
}
