import 'package:flutter/material.dart';

import 'model/colorName.dart';
import 'package:http/http.dart' as http;

enum ColorMode { invertedcolor, complementarycolor, textinvert }

Color getColorMode(ColorNameModel data,
    {ColorMode? mode = ColorMode.complementarycolor}) {
  if (mode == ColorMode.textinvert) {
    return data.textinvert.toString() == "000000" ? Colors.black : Colors.white;
  } else if (mode == ColorMode.invertedcolor) {
    return Color(int.parse("0xFF${data.invertedcolor}"));
  } else if (mode == ColorMode.complementarycolor) {
    return Color(int.parse("0xFF${data.complementarycolor}"));
  } else {
    return Colors.black;
  }
}

Future<String> hexIntoName(
    String value, List<ColorNameModel> colorNameModel) async {
  final colorcode = value.replaceAll("#", "").replaceAll("0xFF", "");

  var response = await http.get(
    Uri.parse("https://everycolorname.vercel.app/colorbyhex/$colorcode"),
  );
  if (response.statusCode == 200 || response.statusCode == 201) {
    colorNameModel = colorNameModelFromJson(response.body);

    return colorNameModel[0].name;
  } else {
    return "";
  }
}

Future<List<ColorNameModel>?> hexIntoColorModel(String value) async {
  final colorcode = value.replaceAll("#", "").replaceAll("0xFF", "");

  var response = await http.get(
    Uri.parse("https://everycolorname.vercel.app/colorbyhex/$colorcode"),
  );
  if (response.statusCode == 200 || response.statusCode == 201) {
    return colorNameModelFromJson(response.body);
  } else {
    return null;
  }
}
