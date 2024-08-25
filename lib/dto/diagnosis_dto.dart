import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'diagnosis_dto.freezed.dart';
part 'diagnosis_dto.g.dart';

@freezed
class DiagnosisDTO with _$DiagnosisDTO {
  factory DiagnosisDTO({
    required int diagnose_id,
    required int? code,
    required String? icd10code,
    required String diagnosis_description,
  }) = _DiagnosisDTO;

  factory DiagnosisDTO.fromJson(Map<String, Object?> json) =>
      _$DiagnosisDTOFromJson(json);
}
