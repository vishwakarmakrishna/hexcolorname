// ignore_for_file: file_names
import 'dart:convert';

List<ColorNameModel> colorNameModelFromJson(String str) =>
    List<ColorNameModel>.from(
        json.decode(str).map((x) => ColorNameModel.fromJson(x)));

String colorNameModelToJson(List<ColorNameModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ColorNameModel {
  ColorNameModel({
    required this.name,
    required this.textinvert,
    required this.hexcode,
    required this.complementarycolor,
    required this.invertedcolor,
  });

  String name;
  String textinvert;
  String hexcode;
  String complementarycolor;
  String invertedcolor;

  factory ColorNameModel.fromJson(Map<String, dynamic> json) => ColorNameModel(
        name: json["name"],
        textinvert: json["textinvert"],
        hexcode: json["hexcode"],
        complementarycolor: json["complementarycolor"],
        invertedcolor: json["invertedcolor"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "textinvert": textinvert,
        "hexcode": hexcode,
        "complementarycolor": complementarycolor,
        "invertedcolor": invertedcolor,
      };
}
