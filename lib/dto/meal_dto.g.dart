// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meal_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MealDTOImpl _$$MealDTOImplFromJson(Map<String, dynamic> json) =>
    _$MealDTOImpl(
      recipes: (json['recipes'] as List<dynamic>)
          .map((e) => RecipeDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
      products: (json['products'] as List<dynamic>)
          .map((e) => ProductDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
      calories: (json['calories'] as num).toInt(),
      proteins: (json['proteins'] as num).toInt(),
      fats: (json['fats'] as num).toInt(),
      carbohydrates: (json['carbohydrates'] as num).toInt(),
    );

Map<String, dynamic> _$$MealDTOImplToJson(_$MealDTOImpl instance) =>
    <String, dynamic>{
      'recipes': instance.recipes,
      'products': instance.products,
      'calories': instance.calories,
      'proteins': instance.proteins,
      'fats': instance.fats,
      'carbohydrates': instance.carbohydrates,
    };
