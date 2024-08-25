import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'ingredient_dto.dart';

part 'total_params_dto.freezed.dart';
part 'total_params_dto.g.dart';

@freezed
class TotalParamsDTO with _$TotalParamsDTO {
  factory TotalParamsDTO({
    required double total_calories,
    required double total_proteins,
    required double total_fats,
    required double total_carbohydrates,
    required double required_calories,
    required double daily_protein_needs,
    required double daily_fat_needs,
    required double daily_carbohydrate_needs,
    required double imt,
  }) = _TotalParamsDTO;

  factory TotalParamsDTO.fromJson(Map<String, Object?> json) =>
      _$TotalParamsDTOFromJson(json);
}
