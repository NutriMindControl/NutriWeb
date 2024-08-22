// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ingredient_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

IngredientDTO _$IngredientDTOFromJson(Map<String, dynamic> json) {
  return _IngredientDTO.fromJson(json);
}

/// @nodoc
mixin _$IngredientDTO {
  int get ingredient_id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  double get count => throw _privateConstructorUsedError;
  String get measure_unit_name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IngredientDTOCopyWith<IngredientDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IngredientDTOCopyWith<$Res> {
  factory $IngredientDTOCopyWith(
          IngredientDTO value, $Res Function(IngredientDTO) then) =
      _$IngredientDTOCopyWithImpl<$Res, IngredientDTO>;
  @useResult
  $Res call(
      {int ingredient_id, String name, double count, String measure_unit_name});
}

/// @nodoc
class _$IngredientDTOCopyWithImpl<$Res, $Val extends IngredientDTO>
    implements $IngredientDTOCopyWith<$Res> {
  _$IngredientDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ingredient_id = null,
    Object? name = null,
    Object? count = null,
    Object? measure_unit_name = null,
  }) {
    return _then(_value.copyWith(
      ingredient_id: null == ingredient_id
          ? _value.ingredient_id
          : ingredient_id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as double,
      measure_unit_name: null == measure_unit_name
          ? _value.measure_unit_name
          : measure_unit_name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IngredientDTOImplCopyWith<$Res>
    implements $IngredientDTOCopyWith<$Res> {
  factory _$$IngredientDTOImplCopyWith(
          _$IngredientDTOImpl value, $Res Function(_$IngredientDTOImpl) then) =
      __$$IngredientDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int ingredient_id, String name, double count, String measure_unit_name});
}

/// @nodoc
class __$$IngredientDTOImplCopyWithImpl<$Res>
    extends _$IngredientDTOCopyWithImpl<$Res, _$IngredientDTOImpl>
    implements _$$IngredientDTOImplCopyWith<$Res> {
  __$$IngredientDTOImplCopyWithImpl(
      _$IngredientDTOImpl _value, $Res Function(_$IngredientDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ingredient_id = null,
    Object? name = null,
    Object? count = null,
    Object? measure_unit_name = null,
  }) {
    return _then(_$IngredientDTOImpl(
      ingredient_id: null == ingredient_id
          ? _value.ingredient_id
          : ingredient_id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as double,
      measure_unit_name: null == measure_unit_name
          ? _value.measure_unit_name
          : measure_unit_name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IngredientDTOImpl
    with DiagnosticableTreeMixin
    implements _IngredientDTO {
  _$IngredientDTOImpl(
      {required this.ingredient_id,
      required this.name,
      required this.count,
      required this.measure_unit_name});

  factory _$IngredientDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$IngredientDTOImplFromJson(json);

  @override
  final int ingredient_id;
  @override
  final String name;
  @override
  final double count;
  @override
  final String measure_unit_name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'IngredientDTO(ingredient_id: $ingredient_id, name: $name, count: $count, measure_unit_name: $measure_unit_name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'IngredientDTO'))
      ..add(DiagnosticsProperty('ingredient_id', ingredient_id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('count', count))
      ..add(DiagnosticsProperty('measure_unit_name', measure_unit_name));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IngredientDTOImpl &&
            (identical(other.ingredient_id, ingredient_id) ||
                other.ingredient_id == ingredient_id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.measure_unit_name, measure_unit_name) ||
                other.measure_unit_name == measure_unit_name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, ingredient_id, name, count, measure_unit_name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IngredientDTOImplCopyWith<_$IngredientDTOImpl> get copyWith =>
      __$$IngredientDTOImplCopyWithImpl<_$IngredientDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IngredientDTOImplToJson(
      this,
    );
  }
}

abstract class _IngredientDTO implements IngredientDTO {
  factory _IngredientDTO(
      {required final int ingredient_id,
      required final String name,
      required final double count,
      required final String measure_unit_name}) = _$IngredientDTOImpl;

  factory _IngredientDTO.fromJson(Map<String, dynamic> json) =
      _$IngredientDTOImpl.fromJson;

  @override
  int get ingredient_id;
  @override
  String get name;
  @override
  double get count;
  @override
  String get measure_unit_name;
  @override
  @JsonKey(ignore: true)
  _$$IngredientDTOImplCopyWith<_$IngredientDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
