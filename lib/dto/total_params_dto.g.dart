// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'total_params_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TotalParamsDTOImpl _$$TotalParamsDTOImplFromJson(Map<String, dynamic> json) =>
    _$TotalParamsDTOImpl(
      total_calories: (json['total_calories'] as num).toDouble(),
      total_proteins: (json['total_proteins'] as num).toDouble(),
      total_fats: (json['total_fats'] as num).toDouble(),
      total_carbohydrates: (json['total_carbohydrates'] as num).toDouble(),
      required_calories: (json['required_calories'] as num).toDouble(),
      daily_protein_needs: (json['daily_protein_needs'] as num).toDouble(),
      daily_fat_needs: (json['daily_fat_needs'] as num).toDouble(),
      daily_carbohydrate_needs:
          (json['daily_carbohydrate_needs'] as num).toDouble(),
      imt: (json['imt'] as num).toDouble(),
    );

Map<String, dynamic> _$$TotalParamsDTOImplToJson(
        _$TotalParamsDTOImpl instance) =>
    <String, dynamic>{
      'total_calories': instance.total_calories,
      'total_proteins': instance.total_proteins,
      'total_fats': instance.total_fats,
      'total_carbohydrates': instance.total_carbohydrates,
      'required_calories': instance.required_calories,
      'daily_protein_needs': instance.daily_protein_needs,
      'daily_fat_needs': instance.daily_fat_needs,
      'daily_carbohydrate_needs': instance.daily_carbohydrate_needs,
      'imt': instance.imt,
    };
