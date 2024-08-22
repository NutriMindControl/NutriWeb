import 'package:sberlab/dto/ingredient_dto.dart';
import 'package:sberlab/entity/ingredient.dart';

class IngredientMapper{
  @override
  Ingredient fromDto(IngredientDTO dto) {
    return Ingredient(
      id: dto.ingredient_id,
      name: dto.name,
      count: dto.count,
      unit: dto.measure_unit_name,
    );
  }

  @override
  IngredientDTO toDto(Ingredient entity) {
    return IngredientDTO(
      name: entity.name,
      count: entity.count,
      ingredient_id: entity.id,
      measure_unit_name: entity.unit,
    );
  }
}
