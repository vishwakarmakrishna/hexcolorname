import 'dart:convert';

List<ColorNameModel> colorNameModelFromJson(String str) =>
    List<ColorNameModel>.from(
        json.decode(str).map((x) => ColorNameModel.fromJson(x)));

String colorNameModelToJson(List<ColorNameModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ColorNameModel {
  ColorNameModel({
    required this.name,
    required this.hexcode,
  });

  String name;
  String hexcode;

  factory ColorNameModel.fromJson(Map<String, dynamic> json) => ColorNameModel(
        name: json["name"],
        hexcode: json["hexcode"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "hexcode": hexcode,
      };
}
