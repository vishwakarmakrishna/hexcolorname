// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'color_name_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ColorNameModel _$ColorNameModelFromJson(Map<String, dynamic> json) {
  return _ColorNameModel.fromJson(json);
}

/// @nodoc
mixin _$ColorNameModel {
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "textinvert")
  String get textInvert => throw _privateConstructorUsedError;
  @JsonKey(name: "hexcode")
  String get hexCode => throw _privateConstructorUsedError;
  @JsonKey(name: "complementarycolor")
  String get complementaryColor => throw _privateConstructorUsedError;
  @JsonKey(name: "invertedcolor")
  String get invertedColor => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ColorNameModelCopyWith<ColorNameModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ColorNameModelCopyWith<$Res> {
  factory $ColorNameModelCopyWith(
          ColorNameModel value, $Res Function(ColorNameModel) then) =
      _$ColorNameModelCopyWithImpl<$Res, ColorNameModel>;
  @useResult
  $Res call(
      {String name,
      @JsonKey(name: "textinvert") String textInvert,
      @JsonKey(name: "hexcode") String hexCode,
      @JsonKey(name: "complementarycolor") String complementaryColor,
      @JsonKey(name: "invertedcolor") String invertedColor});
}

/// @nodoc
class _$ColorNameModelCopyWithImpl<$Res, $Val extends ColorNameModel>
    implements $ColorNameModelCopyWith<$Res> {
  _$ColorNameModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? textInvert = null,
    Object? hexCode = null,
    Object? complementaryColor = null,
    Object? invertedColor = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      textInvert: null == textInvert
          ? _value.textInvert
          : textInvert // ignore: cast_nullable_to_non_nullable
              as String,
      hexCode: null == hexCode
          ? _value.hexCode
          : hexCode // ignore: cast_nullable_to_non_nullable
              as String,
      complementaryColor: null == complementaryColor
          ? _value.complementaryColor
          : complementaryColor // ignore: cast_nullable_to_non_nullable
              as String,
      invertedColor: null == invertedColor
          ? _value.invertedColor
          : invertedColor // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ColorNameModelImplCopyWith<$Res>
    implements $ColorNameModelCopyWith<$Res> {
  factory _$$ColorNameModelImplCopyWith(_$ColorNameModelImpl value,
          $Res Function(_$ColorNameModelImpl) then) =
      __$$ColorNameModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      @JsonKey(name: "textinvert") String textInvert,
      @JsonKey(name: "hexcode") String hexCode,
      @JsonKey(name: "complementarycolor") String complementaryColor,
      @JsonKey(name: "invertedcolor") String invertedColor});
}

/// @nodoc
class __$$ColorNameModelImplCopyWithImpl<$Res>
    extends _$ColorNameModelCopyWithImpl<$Res, _$ColorNameModelImpl>
    implements _$$ColorNameModelImplCopyWith<$Res> {
  __$$ColorNameModelImplCopyWithImpl(
      _$ColorNameModelImpl _value, $Res Function(_$ColorNameModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? textInvert = null,
    Object? hexCode = null,
    Object? complementaryColor = null,
    Object? invertedColor = null,
  }) {
    return _then(_$ColorNameModelImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      textInvert: null == textInvert
          ? _value.textInvert
          : textInvert // ignore: cast_nullable_to_non_nullable
              as String,
      hexCode: null == hexCode
          ? _value.hexCode
          : hexCode // ignore: cast_nullable_to_non_nullable
              as String,
      complementaryColor: null == complementaryColor
          ? _value.complementaryColor
          : complementaryColor // ignore: cast_nullable_to_non_nullable
              as String,
      invertedColor: null == invertedColor
          ? _value.invertedColor
          : invertedColor // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ColorNameModelImpl implements _ColorNameModel {
  const _$ColorNameModelImpl(
      {required this.name,
      @JsonKey(name: "textinvert") required this.textInvert,
      @JsonKey(name: "hexcode") required this.hexCode,
      @JsonKey(name: "complementarycolor") required this.complementaryColor,
      @JsonKey(name: "invertedcolor") required this.invertedColor});

  factory _$ColorNameModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ColorNameModelImplFromJson(json);

  @override
  final String name;
  @override
  @JsonKey(name: "textinvert")
  final String textInvert;
  @override
  @JsonKey(name: "hexcode")
  final String hexCode;
  @override
  @JsonKey(name: "complementarycolor")
  final String complementaryColor;
  @override
  @JsonKey(name: "invertedcolor")
  final String invertedColor;

  @override
  String toString() {
    return 'ColorNameModel(name: $name, textInvert: $textInvert, hexCode: $hexCode, complementaryColor: $complementaryColor, invertedColor: $invertedColor)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ColorNameModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.textInvert, textInvert) ||
                other.textInvert == textInvert) &&
            (identical(other.hexCode, hexCode) || other.hexCode == hexCode) &&
            (identical(other.complementaryColor, complementaryColor) ||
                other.complementaryColor == complementaryColor) &&
            (identical(other.invertedColor, invertedColor) ||
                other.invertedColor == invertedColor));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, textInvert, hexCode,
      complementaryColor, invertedColor);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ColorNameModelImplCopyWith<_$ColorNameModelImpl> get copyWith =>
      __$$ColorNameModelImplCopyWithImpl<_$ColorNameModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ColorNameModelImplToJson(
      this,
    );
  }
}

abstract class _ColorNameModel implements ColorNameModel {
  const factory _ColorNameModel(
      {required final String name,
      @JsonKey(name: "textinvert") required final String textInvert,
      @JsonKey(name: "hexcode") required final String hexCode,
      @JsonKey(name: "complementarycolor")
      required final String complementaryColor,
      @JsonKey(name: "invertedcolor")
      required final String invertedColor}) = _$ColorNameModelImpl;

  factory _ColorNameModel.fromJson(Map<String, dynamic> json) =
      _$ColorNameModelImpl.fromJson;

  @override
  String get name;
  @override
  @JsonKey(name: "textinvert")
  String get textInvert;
  @override
  @JsonKey(name: "hexcode")
  String get hexCode;
  @override
  @JsonKey(name: "complementarycolor")
  String get complementaryColor;
  @override
  @JsonKey(name: "invertedcolor")
  String get invertedColor;
  @override
  @JsonKey(ignore: true)
  _$$ColorNameModelImplCopyWith<_$ColorNameModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
