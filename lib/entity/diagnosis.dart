class Diagnosis {
  final id;
  final code;
  final icd10Code;
  final diagnosisDescription;

  Diagnosis({
    required this.id,
    required this.diagnosisDescription,
    this.code,
    this.icd10Code,
  });
}
