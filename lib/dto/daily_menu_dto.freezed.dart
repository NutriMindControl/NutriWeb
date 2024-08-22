// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'daily_menu_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DailyMenuDTO _$DailyMenuDTOFromJson(Map<String, dynamic> json) {
  return _DailyMenuDTO.fromJson(json);
}

/// @nodoc
mixin _$DailyMenuDTO {
  String get date => throw _privateConstructorUsedError;
  MealDTO get breakfast_meals => throw _privateConstructorUsedError;
  MealDTO get lunch_meals => throw _privateConstructorUsedError;
  MealDTO get dinner_meals => throw _privateConstructorUsedError;
  TotalParamsDTO get total_params => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DailyMenuDTOCopyWith<DailyMenuDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DailyMenuDTOCopyWith<$Res> {
  factory $DailyMenuDTOCopyWith(
          DailyMenuDTO value, $Res Function(DailyMenuDTO) then) =
      _$DailyMenuDTOCopyWithImpl<$Res, DailyMenuDTO>;
  @useResult
  $Res call(
      {String date,
      MealDTO breakfast_meals,
      MealDTO lunch_meals,
      MealDTO dinner_meals,
      TotalParamsDTO total_params});

  $MealDTOCopyWith<$Res> get breakfast_meals;
  $MealDTOCopyWith<$Res> get lunch_meals;
  $MealDTOCopyWith<$Res> get dinner_meals;
  $TotalParamsDTOCopyWith<$Res> get total_params;
}

/// @nodoc
class _$DailyMenuDTOCopyWithImpl<$Res, $Val extends DailyMenuDTO>
    implements $DailyMenuDTOCopyWith<$Res> {
  _$DailyMenuDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? breakfast_meals = null,
    Object? lunch_meals = null,
    Object? dinner_meals = null,
    Object? total_params = null,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      breakfast_meals: null == breakfast_meals
          ? _value.breakfast_meals
          : breakfast_meals // ignore: cast_nullable_to_non_nullable
              as MealDTO,
      lunch_meals: null == lunch_meals
          ? _value.lunch_meals
          : lunch_meals // ignore: cast_nullable_to_non_nullable
              as MealDTO,
      dinner_meals: null == dinner_meals
          ? _value.dinner_meals
          : dinner_meals // ignore: cast_nullable_to_non_nullable
              as MealDTO,
      total_params: null == total_params
          ? _value.total_params
          : total_params // ignore: cast_nullable_to_non_nullable
              as TotalParamsDTO,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MealDTOCopyWith<$Res> get breakfast_meals {
    return $MealDTOCopyWith<$Res>(_value.breakfast_meals, (value) {
      return _then(_value.copyWith(breakfast_meals: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MealDTOCopyWith<$Res> get lunch_meals {
    return $MealDTOCopyWith<$Res>(_value.lunch_meals, (value) {
      return _then(_value.copyWith(lunch_meals: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MealDTOCopyWith<$Res> get dinner_meals {
    return $MealDTOCopyWith<$Res>(_value.dinner_meals, (value) {
      return _then(_value.copyWith(dinner_meals: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TotalParamsDTOCopyWith<$Res> get total_params {
    return $TotalParamsDTOCopyWith<$Res>(_value.total_params, (value) {
      return _then(_value.copyWith(total_params: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DailyMenuDTOImplCopyWith<$Res>
    implements $DailyMenuDTOCopyWith<$Res> {
  factory _$$DailyMenuDTOImplCopyWith(
          _$DailyMenuDTOImpl value, $Res Function(_$DailyMenuDTOImpl) then) =
      __$$DailyMenuDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String date,
      MealDTO breakfast_meals,
      MealDTO lunch_meals,
      MealDTO dinner_meals,
      TotalParamsDTO total_params});

  @override
  $MealDTOCopyWith<$Res> get breakfast_meals;
  @override
  $MealDTOCopyWith<$Res> get lunch_meals;
  @override
  $MealDTOCopyWith<$Res> get dinner_meals;
  @override
  $TotalParamsDTOCopyWith<$Res> get total_params;
}

/// @nodoc
class __$$DailyMenuDTOImplCopyWithImpl<$Res>
    extends _$DailyMenuDTOCopyWithImpl<$Res, _$DailyMenuDTOImpl>
    implements _$$DailyMenuDTOImplCopyWith<$Res> {
  __$$DailyMenuDTOImplCopyWithImpl(
      _$DailyMenuDTOImpl _value, $Res Function(_$DailyMenuDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? breakfast_meals = null,
    Object? lunch_meals = null,
    Object? dinner_meals = null,
    Object? total_params = null,
  }) {
    return _then(_$DailyMenuDTOImpl(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      breakfast_meals: null == breakfast_meals
          ? _value.breakfast_meals
          : breakfast_meals // ignore: cast_nullable_to_non_nullable
              as MealDTO,
      lunch_meals: null == lunch_meals
          ? _value.lunch_meals
          : lunch_meals // ignore: cast_nullable_to_non_nullable
              as MealDTO,
      dinner_meals: null == dinner_meals
          ? _value.dinner_meals
          : dinner_meals // ignore: cast_nullable_to_non_nullable
              as MealDTO,
      total_params: null == total_params
          ? _value.total_params
          : total_params // ignore: cast_nullable_to_non_nullable
              as TotalParamsDTO,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DailyMenuDTOImpl with DiagnosticableTreeMixin implements _DailyMenuDTO {
  _$DailyMenuDTOImpl(
      {required this.date,
      required this.breakfast_meals,
      required this.lunch_meals,
      required this.dinner_meals,
      required this.total_params});

  factory _$DailyMenuDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$DailyMenuDTOImplFromJson(json);

  @override
  final String date;
  @override
  final MealDTO breakfast_meals;
  @override
  final MealDTO lunch_meals;
  @override
  final MealDTO dinner_meals;
  @override
  final TotalParamsDTO total_params;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DailyMenuDTO(date: $date, breakfast_meals: $breakfast_meals, lunch_meals: $lunch_meals, dinner_meals: $dinner_meals, total_params: $total_params)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DailyMenuDTO'))
      ..add(DiagnosticsProperty('date', date))
      ..add(DiagnosticsProperty('breakfast_meals', breakfast_meals))
      ..add(DiagnosticsProperty('lunch_meals', lunch_meals))
      ..add(DiagnosticsProperty('dinner_meals', dinner_meals))
      ..add(DiagnosticsProperty('total_params', total_params));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DailyMenuDTOImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.breakfast_meals, breakfast_meals) ||
                other.breakfast_meals == breakfast_meals) &&
            (identical(other.lunch_meals, lunch_meals) ||
                other.lunch_meals == lunch_meals) &&
            (identical(other.dinner_meals, dinner_meals) ||
                other.dinner_meals == dinner_meals) &&
            (identical(other.total_params, total_params) ||
                other.total_params == total_params));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, date, breakfast_meals,
      lunch_meals, dinner_meals, total_params);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DailyMenuDTOImplCopyWith<_$DailyMenuDTOImpl> get copyWith =>
      __$$DailyMenuDTOImplCopyWithImpl<_$DailyMenuDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DailyMenuDTOImplToJson(
      this,
    );
  }
}

abstract class _DailyMenuDTO implements DailyMenuDTO {
  factory _DailyMenuDTO(
      {required final String date,
      required final MealDTO breakfast_meals,
      required final MealDTO lunch_meals,
      required final MealDTO dinner_meals,
      required final TotalParamsDTO total_params}) = _$DailyMenuDTOImpl;

  factory _DailyMenuDTO.fromJson(Map<String, dynamic> json) =
      _$DailyMenuDTOImpl.fromJson;

  @override
  String get date;
  @override
  MealDTO get breakfast_meals;
  @override
  MealDTO get lunch_meals;
  @override
  MealDTO get dinner_meals;
  @override
  TotalParamsDTO get total_params;
  @override
  @JsonKey(ignore: true)
  _$$DailyMenuDTOImplCopyWith<_$DailyMenuDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
