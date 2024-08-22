import 'package:sberlab/entity/diagnosis.dart';

import '../dto/diagnosis_dto.dart';

class DiagnosisMapper{
  @override
  Diagnosis fromDto(DiagnosisDTO dto) {
    return Diagnosis(
      id: dto.diagnose_id,
      code: dto.code,
      icd10Code: dto.icd10code,
      diagnosisDescription: dto.diagnosis_description,
    );
  }

  @override
  DiagnosisDTO toDto(Diagnosis entity) {
    return DiagnosisDTO(
      diagnose_id: entity.id,
      code: entity.code,
      icd10code: entity.icd10Code,
      diagnosis_description: entity.diagnosisDescription,
    );
  }
}
