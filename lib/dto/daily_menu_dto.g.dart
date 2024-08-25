// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily_menu_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DailyMenuDTOImpl _$$DailyMenuDTOImplFromJson(Map<String, dynamic> json) =>
    _$DailyMenuDTOImpl(
      date: json['date'] as String,
      breakfast_meals:
          MealDTO.fromJson(json['breakfast_meals'] as Map<String, dynamic>),
      lunch_meals:
          MealDTO.fromJson(json['lunch_meals'] as Map<String, dynamic>),
      dinner_meals:
          MealDTO.fromJson(json['dinner_meals'] as Map<String, dynamic>),
      total_params:
          TotalParamsDTO.fromJson(json['total_params'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DailyMenuDTOImplToJson(_$DailyMenuDTOImpl instance) =>
    <String, dynamic>{
      'date': instance.date,
      'breakfast_meals': instance.breakfast_meals,
      'lunch_meals': instance.lunch_meals,
      'dinner_meals': instance.dinner_meals,
      'total_params': instance.total_params,
    };
