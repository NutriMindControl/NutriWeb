// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'diagnosis_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DiagnosisDTO _$DiagnosisDTOFromJson(Map<String, dynamic> json) {
  return _DiagnosisDTO.fromJson(json);
}

/// @nodoc
mixin _$DiagnosisDTO {
  int get diagnose_id => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  String? get icd10code => throw _privateConstructorUsedError;
  String get diagnosis_description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DiagnosisDTOCopyWith<DiagnosisDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiagnosisDTOCopyWith<$Res> {
  factory $DiagnosisDTOCopyWith(
          DiagnosisDTO value, $Res Function(DiagnosisDTO) then) =
      _$DiagnosisDTOCopyWithImpl<$Res, DiagnosisDTO>;
  @useResult
  $Res call(
      {int diagnose_id,
      String? code,
      String? icd10code,
      String diagnosis_description});
}

/// @nodoc
class _$DiagnosisDTOCopyWithImpl<$Res, $Val extends DiagnosisDTO>
    implements $DiagnosisDTOCopyWith<$Res> {
  _$DiagnosisDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? diagnose_id = null,
    Object? code = freezed,
    Object? icd10code = freezed,
    Object? diagnosis_description = null,
  }) {
    return _then(_value.copyWith(
      diagnose_id: null == diagnose_id
          ? _value.diagnose_id
          : diagnose_id // ignore: cast_nullable_to_non_nullable
              as int,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      icd10code: freezed == icd10code
          ? _value.icd10code
          : icd10code // ignore: cast_nullable_to_non_nullable
              as String?,
      diagnosis_description: null == diagnosis_description
          ? _value.diagnosis_description
          : diagnosis_description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DiagnosisDTOImplCopyWith<$Res>
    implements $DiagnosisDTOCopyWith<$Res> {
  factory _$$DiagnosisDTOImplCopyWith(
          _$DiagnosisDTOImpl value, $Res Function(_$DiagnosisDTOImpl) then) =
      __$$DiagnosisDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int diagnose_id,
      String? code,
      String? icd10code,
      String diagnosis_description});
}

/// @nodoc
class __$$DiagnosisDTOImplCopyWithImpl<$Res>
    extends _$DiagnosisDTOCopyWithImpl<$Res, _$DiagnosisDTOImpl>
    implements _$$DiagnosisDTOImplCopyWith<$Res> {
  __$$DiagnosisDTOImplCopyWithImpl(
      _$DiagnosisDTOImpl _value, $Res Function(_$DiagnosisDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? diagnose_id = null,
    Object? code = freezed,
    Object? icd10code = freezed,
    Object? diagnosis_description = null,
  }) {
    return _then(_$DiagnosisDTOImpl(
      diagnose_id: null == diagnose_id
          ? _value.diagnose_id
          : diagnose_id // ignore: cast_nullable_to_non_nullable
              as int,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      icd10code: freezed == icd10code
          ? _value.icd10code
          : icd10code // ignore: cast_nullable_to_non_nullable
              as String?,
      diagnosis_description: null == diagnosis_description
          ? _value.diagnosis_description
          : diagnosis_description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DiagnosisDTOImpl with DiagnosticableTreeMixin implements _DiagnosisDTO {
  _$DiagnosisDTOImpl(
      {required this.diagnose_id,
      required this.code,
      required this.icd10code,
      required this.diagnosis_description});

  factory _$DiagnosisDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$DiagnosisDTOImplFromJson(json);

  @override
  final int diagnose_id;
  @override
  final String? code;
  @override
  final String? icd10code;
  @override
  final String diagnosis_description;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DiagnosisDTO(diagnose_id: $diagnose_id, code: $code, icd10code: $icd10code, diagnosis_description: $diagnosis_description)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DiagnosisDTO'))
      ..add(DiagnosticsProperty('diagnose_id', diagnose_id))
      ..add(DiagnosticsProperty('code', code))
      ..add(DiagnosticsProperty('icd10code', icd10code))
      ..add(
          DiagnosticsProperty('diagnosis_description', diagnosis_description));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DiagnosisDTOImpl &&
            (identical(other.diagnose_id, diagnose_id) ||
                other.diagnose_id == diagnose_id) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.icd10code, icd10code) ||
                other.icd10code == icd10code) &&
            (identical(other.diagnosis_description, diagnosis_description) ||
                other.diagnosis_description == diagnosis_description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, diagnose_id, code, icd10code, diagnosis_description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DiagnosisDTOImplCopyWith<_$DiagnosisDTOImpl> get copyWith =>
      __$$DiagnosisDTOImplCopyWithImpl<_$DiagnosisDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DiagnosisDTOImplToJson(
      this,
    );
  }
}

abstract class _DiagnosisDTO implements DiagnosisDTO {
  factory _DiagnosisDTO(
      {required final int diagnose_id,
      required final String? code,
      required final String? icd10code,
      required final String diagnosis_description}) = _$DiagnosisDTOImpl;

  factory _DiagnosisDTO.fromJson(Map<String, dynamic> json) =
      _$DiagnosisDTOImpl.fromJson;

  @override
  int get diagnose_id;
  @override
  String? get code;
  @override
  String? get icd10code;
  @override
  String get diagnosis_description;
  @override
  @JsonKey(ignore: true)
  _$$DiagnosisDTOImplCopyWith<_$DiagnosisDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
