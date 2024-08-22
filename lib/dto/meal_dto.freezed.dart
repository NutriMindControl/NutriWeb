// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meal_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MealDTO _$MealDTOFromJson(Map<String, dynamic> json) {
  return _MealDTO.fromJson(json);
}

/// @nodoc
mixin _$MealDTO {
  List<RecipeDTO> get recipes => throw _privateConstructorUsedError;
  List<ProductDTO> get products => throw _privateConstructorUsedError;
  int get calories => throw _privateConstructorUsedError;
  int get proteins => throw _privateConstructorUsedError;
  int get fats => throw _privateConstructorUsedError;
  int get carbohydrates => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MealDTOCopyWith<MealDTO> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MealDTOCopyWith<$Res> {
  factory $MealDTOCopyWith(MealDTO value, $Res Function(MealDTO) then) =
      _$MealDTOCopyWithImpl<$Res, MealDTO>;
  @useResult
  $Res call(
      {List<RecipeDTO> recipes,
      List<ProductDTO> products,
      int calories,
      int proteins,
      int fats,
      int carbohydrates});
}

/// @nodoc
class _$MealDTOCopyWithImpl<$Res, $Val extends MealDTO>
    implements $MealDTOCopyWith<$Res> {
  _$MealDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipes = null,
    Object? products = null,
    Object? calories = null,
    Object? proteins = null,
    Object? fats = null,
    Object? carbohydrates = null,
  }) {
    return _then(_value.copyWith(
      recipes: null == recipes
          ? _value.recipes
          : recipes // ignore: cast_nullable_to_non_nullable
              as List<RecipeDTO>,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductDTO>,
      calories: null == calories
          ? _value.calories
          : calories // ignore: cast_nullable_to_non_nullable
              as int,
      proteins: null == proteins
          ? _value.proteins
          : proteins // ignore: cast_nullable_to_non_nullable
              as int,
      fats: null == fats
          ? _value.fats
          : fats // ignore: cast_nullable_to_non_nullable
              as int,
      carbohydrates: null == carbohydrates
          ? _value.carbohydrates
          : carbohydrates // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MealDTOImplCopyWith<$Res> implements $MealDTOCopyWith<$Res> {
  factory _$$MealDTOImplCopyWith(
          _$MealDTOImpl value, $Res Function(_$MealDTOImpl) then) =
      __$$MealDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<RecipeDTO> recipes,
      List<ProductDTO> products,
      int calories,
      int proteins,
      int fats,
      int carbohydrates});
}

/// @nodoc
class __$$MealDTOImplCopyWithImpl<$Res>
    extends _$MealDTOCopyWithImpl<$Res, _$MealDTOImpl>
    implements _$$MealDTOImplCopyWith<$Res> {
  __$$MealDTOImplCopyWithImpl(
      _$MealDTOImpl _value, $Res Function(_$MealDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipes = null,
    Object? products = null,
    Object? calories = null,
    Object? proteins = null,
    Object? fats = null,
    Object? carbohydrates = null,
  }) {
    return _then(_$MealDTOImpl(
      recipes: null == recipes
          ? _value._recipes
          : recipes // ignore: cast_nullable_to_non_nullable
              as List<RecipeDTO>,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductDTO>,
      calories: null == calories
          ? _value.calories
          : calories // ignore: cast_nullable_to_non_nullable
              as int,
      proteins: null == proteins
          ? _value.proteins
          : proteins // ignore: cast_nullable_to_non_nullable
              as int,
      fats: null == fats
          ? _value.fats
          : fats // ignore: cast_nullable_to_non_nullable
              as int,
      carbohydrates: null == carbohydrates
          ? _value.carbohydrates
          : carbohydrates // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MealDTOImpl with DiagnosticableTreeMixin implements _MealDTO {
  _$MealDTOImpl(
      {required final List<RecipeDTO> recipes,
      required final List<ProductDTO> products,
      required this.calories,
      required this.proteins,
      required this.fats,
      required this.carbohydrates})
      : _recipes = recipes,
        _products = products;

  factory _$MealDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$MealDTOImplFromJson(json);

  final List<RecipeDTO> _recipes;
  @override
  List<RecipeDTO> get recipes {
    if (_recipes is EqualUnmodifiableListView) return _recipes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recipes);
  }

  final List<ProductDTO> _products;
  @override
  List<ProductDTO> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  final int calories;
  @override
  final int proteins;
  @override
  final int fats;
  @override
  final int carbohydrates;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MealDTO(recipes: $recipes, products: $products, calories: $calories, proteins: $proteins, fats: $fats, carbohydrates: $carbohydrates)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MealDTO'))
      ..add(DiagnosticsProperty('recipes', recipes))
      ..add(DiagnosticsProperty('products', products))
      ..add(DiagnosticsProperty('calories', calories))
      ..add(DiagnosticsProperty('proteins', proteins))
      ..add(DiagnosticsProperty('fats', fats))
      ..add(DiagnosticsProperty('carbohydrates', carbohydrates));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MealDTOImpl &&
            const DeepCollectionEquality().equals(other._recipes, _recipes) &&
            const DeepCollectionEquality().equals(other._products, _products) &&
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
      const DeepCollectionEquality().hash(_recipes),
      const DeepCollectionEquality().hash(_products),
      calories,
      proteins,
      fats,
      carbohydrates);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MealDTOImplCopyWith<_$MealDTOImpl> get copyWith =>
      __$$MealDTOImplCopyWithImpl<_$MealDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MealDTOImplToJson(
      this,
    );
  }
}

abstract class _MealDTO implements MealDTO {
  factory _MealDTO(
      {required final List<RecipeDTO> recipes,
      required final List<ProductDTO> products,
      required final int calories,
      required final int proteins,
      required final int fats,
      required final int carbohydrates}) = _$MealDTOImpl;

  factory _MealDTO.fromJson(Map<String, dynamic> json) = _$MealDTOImpl.fromJson;

  @override
  List<RecipeDTO> get recipes;
  @override
  List<ProductDTO> get products;
  @override
  int get calories;
  @override
  int get proteins;
  @override
  int get fats;
  @override
  int get carbohydrates;
  @override
  @JsonKey(ignore: true)
  _$$MealDTOImplCopyWith<_$MealDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
