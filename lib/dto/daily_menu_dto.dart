import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sberlab/dto/meal_dto.dart';
import 'package:sberlab/dto/total_params_dto.dart';

part 'daily_menu_dto.freezed.dart';
part 'daily_menu_dto.g.dart';

@freezed
class DailyMenuDTO with _$DailyMenuDTO {
  factory DailyMenuDTO({
    required String date,
    required MealDTO breakfast_meals,
    required MealDTO lunch_meals,
    required MealDTO dinner_meals,
    required TotalParamsDTO total_params,
  }) = _DailyMenuDTO;

  factory DailyMenuDTO.fromJson(Map<String, Object?> json) =>
      _$DailyMenuDTOFromJson(json);
}
