// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'color_name_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ColorNameModelImpl _$$ColorNameModelImplFromJson(Map<String, dynamic> json) =>
    _$ColorNameModelImpl(
      name: json['name'] as String,
      textInvert: json['textinvert'] as String,
      hexCode: json['hexcode'] as String,
      complementaryColor: json['complementarycolor'] as String,
      invertedColor: json['invertedcolor'] as String,
    );

Map<String, dynamic> _$$ColorNameModelImplToJson(
        _$ColorNameModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'textinvert': instance.textInvert,
      'hexcode': instance.hexCode,
      'complementarycolor': instance.complementaryColor,
      'invertedcolor': instance.invertedColor,
    };
