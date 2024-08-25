// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductDTOImpl _$$ProductDTOImplFromJson(Map<String, dynamic> json) =>
    _$ProductDTOImpl(
      product_id: (json['product_id'] as num).toInt(),
      product_name: json['product_name'] as String,
      serving: (json['serving'] as num).toDouble(),
      proteins: (json['proteins'] as num).toDouble(),
      fats: (json['fats'] as num).toDouble(),
      carbohydrates: (json['carbohydrates'] as num).toDouble(),
      calories: (json['calories'] as num).toDouble(),
      categories: json['categories'] as String,
    );

Map<String, dynamic> _$$ProductDTOImplToJson(_$ProductDTOImpl instance) =>
    <String, dynamic>{
      'product_id': instance.product_id,
      'product_name': instance.product_name,
      'serving': instance.serving,
      'proteins': instance.proteins,
      'fats': instance.fats,
      'carbohydrates': instance.carbohydrates,
      'calories': instance.calories,
      'categories': instance.categories,
    };
