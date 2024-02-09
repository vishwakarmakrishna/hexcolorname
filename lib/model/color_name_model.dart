import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'color_name_model.freezed.dart';
part 'color_name_model.g.dart';

List<ColorNameModel> colorNameModelFromJson(String str) =>
    List<ColorNameModel>.from(
        json.decode(str).map((x) => ColorNameModel.fromJson(x)));

String colorNameModelToJson(List<ColorNameModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class ColorNameModel with _$ColorNameModel {
  const factory ColorNameModel({
    required String name,
    @JsonKey(name: "textinvert") required String textInvert,
    @JsonKey(name: "hexcode") required String hexCode,
    @JsonKey(name: "complementarycolor") required String complementaryColor,
    @JsonKey(name: "invertedcolor") required String invertedColor,
  }) = _ColorNameModel;

  factory ColorNameModel.fromJson(Map<String, dynamic> json) =>
      _$ColorNameModelFromJson(json);
}
