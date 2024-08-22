// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ingredient_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$IngredientDTOImpl _$$IngredientDTOImplFromJson(Map<String, dynamic> json) =>
    _$IngredientDTOImpl(
      ingredient_id: (json['ingredient_id'] as num).toInt(),
      name: json['name'] as String,
      count: (json['count'] as num).toDouble(),
      measure_unit_name: json['measure_unit_name'] as String,
    );

Map<String, dynamic> _$$IngredientDTOImplToJson(_$IngredientDTOImpl instance) =>
    <String, dynamic>{
      'ingredient_id': instance.ingredient_id,
      'name': instance.name,
      'count': instance.count,
      'measure_unit_name': instance.measure_unit_name,
    };
