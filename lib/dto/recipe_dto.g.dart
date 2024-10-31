// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RecipeDTOImpl _$$RecipeDTOImplFromJson(Map<String, dynamic> json) =>
    _$RecipeDTOImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      ingredients_distributions:
          (json['ingredients_distributions'] as List<dynamic>)
              .map((e) => IngredientDTO.fromJson(e as Map<String, dynamic>))
              .toList(),
      cook_time_mins: (json['cook_time_mins'] as num).toInt(),
      prep_time_mins: json['prep_time_mins'] as String?,
      servings: 0,
      calories: (json['calories'] as num).toDouble(),
      proteins: (json['proteins'] as num).toDouble(),
      fats: (json['fats'] as num).toDouble(),
      carbohydrates: (json['carbohydrates'] as num).toDouble(),
    );

Map<String, dynamic> _$$RecipeDTOImplToJson(_$RecipeDTOImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'ingredients_distributions': instance.ingredients_distributions,
      'cook_time_mins': instance.cook_time_mins,
      'prep_time_mins': instance.prep_time_mins,
      'servings': instance.servings,
      'calories': instance.calories,
      'proteins': instance.proteins,
      'fats': instance.fats,
      'carbohydrates': instance.carbohydrates,
    };
