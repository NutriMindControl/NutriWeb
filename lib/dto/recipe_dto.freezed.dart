// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recipe_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RecipeDTO _$RecipeDTOFromJson(Map<String, dynamic> json) {
  return _RecipeDTO.fromJson(json);
}

/// @nodoc
mixin _$RecipeDTO {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<IngredientDTO> get ingredients_distributions =>
      throw _privateConstructorUsedError;
  int get cook_time_mins => throw _privateConstructorUsedError;
  String? get prep_time_mins => throw _privateConstructorUsedError;
  double get servings => throw _privateConstructorUsedError;
  double get calories => throw _privateConstructorUsedError;
  double get proteins => throw _privateConstructorUsedError;
  double get fats => throw _privateConstructorUsedError;
  double get carbohydrates => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecipeDTOCopyWith<RecipeDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeDTOCopyWith<$Res> {
  factory $RecipeDTOCopyWith(RecipeDTO value, $Res Function(RecipeDTO) then) =
      _$RecipeDTOCopyWithImpl<$Res, RecipeDTO>;
  @useResult
  $Res call(
      {int id,
      String name,
      List<IngredientDTO> ingredients_distributions,
      int cook_time_mins,
      String? prep_time_mins,
      double servings,
      double calories,
      double proteins,
      double fats,
      double carbohydrates});
}

/// @nodoc
class _$RecipeDTOCopyWithImpl<$Res, $Val extends RecipeDTO>
    implements $RecipeDTOCopyWith<$Res> {
  _$RecipeDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? ingredients_distributions = null,
    Object? cook_time_mins = null,
    Object? prep_time_mins = freezed,
    Object? servings = null,
    Object? calories = null,
    Object? proteins = null,
    Object? fats = null,
    Object? carbohydrates = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      ingredients_distributions: null == ingredients_distributions
          ? _value.ingredients_distributions
          : ingredients_distributions // ignore: cast_nullable_to_non_nullable
              as List<IngredientDTO>,
      cook_time_mins: null == cook_time_mins
          ? _value.cook_time_mins
          : cook_time_mins // ignore: cast_nullable_to_non_nullable
              as int,
      prep_time_mins: freezed == prep_time_mins
          ? _value.prep_time_mins
          : prep_time_mins // ignore: cast_nullable_to_non_nullable
              as String?,
      servings: null == servings
          ? _value.servings
          : servings // ignore: cast_nullable_to_non_nullable
              as double,
      calories: null == calories
          ? _value.calories
          : calories // ignore: cast_nullable_to_non_nullable
              as double,
      proteins: null == proteins
          ? _value.proteins
          : proteins // ignore: cast_nullable_to_non_nullable
              as double,
      fats: null == fats
          ? _value.fats
          : fats // ignore: cast_nullable_to_non_nullable
              as double,
      carbohydrates: null == carbohydrates
          ? _value.carbohydrates
          : carbohydrates // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RecipeDTOImplCopyWith<$Res>
    implements $RecipeDTOCopyWith<$Res> {
  factory _$$RecipeDTOImplCopyWith(
          _$RecipeDTOImpl value, $Res Function(_$RecipeDTOImpl) then) =
      __$$RecipeDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      List<IngredientDTO> ingredients_distributions,
      int cook_time_mins,
      String? prep_time_mins,
      double servings,
      double calories,
      double proteins,
      double fats,
      double carbohydrates});
}

/// @nodoc
class __$$RecipeDTOImplCopyWithImpl<$Res>
    extends _$RecipeDTOCopyWithImpl<$Res, _$RecipeDTOImpl>
    implements _$$RecipeDTOImplCopyWith<$Res> {
  __$$RecipeDTOImplCopyWithImpl(
      _$RecipeDTOImpl _value, $Res Function(_$RecipeDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? ingredients_distributions = null,
    Object? cook_time_mins = null,
    Object? prep_time_mins = freezed,
    Object? servings = null,
    Object? calories = null,
    Object? proteins = null,
    Object? fats = null,
    Object? carbohydrates = null,
  }) {
    return _then(_$RecipeDTOImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      ingredients_distributions: null == ingredients_distributions
          ? _value._ingredients_distributions
          : ingredients_distributions // ignore: cast_nullable_to_non_nullable
              as List<IngredientDTO>,
      cook_time_mins: null == cook_time_mins
          ? _value.cook_time_mins
          : cook_time_mins // ignore: cast_nullable_to_non_nullable
              as int,
      prep_time_mins: freezed == prep_time_mins
          ? _value.prep_time_mins
          : prep_time_mins // ignore: cast_nullable_to_non_nullable
              as String?,
      servings: null == servings
          ? _value.servings
          : servings // ignore: cast_nullable_to_non_nullable
              as double,
      calories: null == calories
          ? _value.calories
          : calories // ignore: cast_nullable_to_non_nullable
              as double,
      proteins: null == proteins
          ? _value.proteins
          : proteins // ignore: cast_nullable_to_non_nullable
              as double,
      fats: null == fats
          ? _value.fats
          : fats // ignore: cast_nullable_to_non_nullable
              as double,
      carbohydrates: null == carbohydrates
          ? _value.carbohydrates
          : carbohydrates // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RecipeDTOImpl with DiagnosticableTreeMixin implements _RecipeDTO {
  _$RecipeDTOImpl(
      {required this.id,
      required this.name,
      required final List<IngredientDTO> ingredients_distributions,
      required this.cook_time_mins,
      required this.prep_time_mins,
      required this.servings,
      required this.calories,
      required this.proteins,
      required this.fats,
      required this.carbohydrates})
      : _ingredients_distributions = ingredients_distributions;

  factory _$RecipeDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$RecipeDTOImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  final List<IngredientDTO> _ingredients_distributions;
  @override
  List<IngredientDTO> get ingredients_distributions {
    if (_ingredients_distributions is EqualUnmodifiableListView)
      return _ingredients_distributions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ingredients_distributions);
  }

  @override
  final int cook_time_mins;
  @override
  final String? prep_time_mins;
  @override
  final double servings;
  @override
  final double calories;
  @override
  final double proteins;
  @override
  final double fats;
  @override
  final double carbohydrates;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RecipeDTO(id: $id, name: $name, ingredients_distributions: $ingredients_distributions, cook_time_mins: $cook_time_mins, prep_time_mins: $prep_time_mins, servings: $servings, calories: $calories, proteins: $proteins, fats: $fats, carbohydrates: $carbohydrates)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RecipeDTO'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty(
          'ingredients_distributions', ingredients_distributions))
      ..add(DiagnosticsProperty('cook_time_mins', cook_time_mins))
      ..add(DiagnosticsProperty('prep_time_mins', prep_time_mins))
      ..add(DiagnosticsProperty('servings', servings))
      ..add(DiagnosticsProperty('calories', calories))
      ..add(DiagnosticsProperty('proteins', proteins))
      ..add(DiagnosticsProperty('fats', fats))
      ..add(DiagnosticsProperty('carbohydrates', carbohydrates));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecipeDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(
                other._ingredients_distributions, _ingredients_distributions) &&
            (identical(other.cook_time_mins, cook_time_mins) ||
                other.cook_time_mins == cook_time_mins) &&
            (identical(other.prep_time_mins, prep_time_mins) ||
                other.prep_time_mins == prep_time_mins) &&
            (identical(other.servings, servings) ||
                other.servings == servings) &&
            (identical(other.calories, calories) ||
                other.calories == calories) &&
            (identical(other.proteins, proteins) ||
                other.proteins == proteins) &&
            (identical(other.fats, fats) || other.fats == fats) &&
            (identical(other.carbohydrates, carbohydrates) ||
                other.carbohydrates == carbohydrates));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      const DeepCollectionEquality().hash(_ingredients_distributions),
      cook_time_mins,
      prep_time_mins,
      servings,
      calories,
      proteins,
      fats,
      carbohydrates);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecipeDTOImplCopyWith<_$RecipeDTOImpl> get copyWith =>
      __$$RecipeDTOImplCopyWithImpl<_$RecipeDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RecipeDTOImplToJson(
      this,
    );
  }
}

abstract class _RecipeDTO implements RecipeDTO {
  factory _RecipeDTO(
      {required final int id,
      required final String name,
      required final List<IngredientDTO> ingredients_distributions,
      required final int cook_time_mins,
      required final String? prep_time_mins,
      required final double servings,
      required final double calories,
      required final double proteins,
      required final double fats,
      required final double carbohydrates}) = _$RecipeDTOImpl;

  factory _RecipeDTO.fromJson(Map<String, dynamic> json) =
      _$RecipeDTOImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  List<IngredientDTO> get ingredients_distributions;
  @override
  int get cook_time_mins;
  @override
  String? get prep_time_mins;
  @override
  double get servings;
  @override
  double get calories;
  @override
  double get proteins;
  @override
  double get fats;
  @override
  double get carbohydrates;
  @override
  @JsonKey(ignore: true)
  _$$RecipeDTOImplCopyWith<_$RecipeDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
