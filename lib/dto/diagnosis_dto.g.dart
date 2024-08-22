// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'diagnosis_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DiagnosisDTOImpl _$$DiagnosisDTOImplFromJson(Map<String, dynamic> json) =>
    _$DiagnosisDTOImpl(
      diagnose_id: (json['diagnose_id'] as num).toInt(),
      code: json['code'] as String?,
      icd10code: json['icd10code'] as String?,
      diagnosis_description: json['diagnosis_description'] as String,
    );

Map<String, dynamic> _$$DiagnosisDTOImplToJson(_$DiagnosisDTOImpl instance) =>
    <String, dynamic>{
      'diagnose_id': instance.diagnose_id,
      'code': instance.code,
      'icd10code': instance.icd10code,
      'diagnosis_description': instance.diagnosis_description,
    };
