import 'package:flutter/material.dart';
import 'package:hexcolorname/model/color_name_model.dart';
import 'package:hexcolorname/utils/constants.dart';

extension HexColorExtension on String {
  String removeHexPrefix() => replaceAll("#", "").replaceAll("0xFF", "");
  Color toColor() => Color(int.parse("0xFF${removeHexPrefix()}"));
  String get hexWithoutPrefix {
    return replaceAll("#", "").replaceAll("0x", "").toUpperCase();
  }
}

extension ColorExtension on Color {
  String get hexWithoutPrefix {
    return value.toRadixString(16).substring(2).toUpperCase();
  }
}

extension ColorNameModelExtension on ColorNameModel {
  Color getColorMode({
    ColorMode mode = ColorMode.complementarycolor,
  }) {
    if (mode == ColorMode.textinvert) {
      return textInvert.toString() == "000000" ? black : white;
    } else if (mode == ColorMode.invertedcolor) {
      return invertedColor.toColor();
    } else if (mode == ColorMode.complementarycolor) {
      return complementaryColor.toColor();
    } else {
      return black;
    }
  }
}
