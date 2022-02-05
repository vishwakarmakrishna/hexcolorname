// ignore_for_file: prefer_if_null_operators

library hexcolorname;

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'model/colorName.dart';

enum ColorMode { invertedcolor, complementarycolor, textinvert }

class ColorCodeName extends StatelessWidget {
  static List<ColorNameModel> colorNameModel = [];
  final ColorMode mode;
  final String hexColor;
  final Widget? loading;
  final Widget? error;
  final TextStyle? style;
  final StrutStyle? strutStyle;
  final TextAlign? textAlign;
  final TextDirection? textDirection;
  final Locale? locale;
  final bool? softWrap;
  final TextOverflow? overflow;
  final double? textScaleFactor;
  final int? maxLines;
  final String? semanticsLabel;
  final TextWidthBasis? textWidthBasis;
  final TextHeightBehavior? textHeightBehavior;
  const ColorCodeName({
    Key? key,
    required this.hexColor,
    this.mode = ColorMode.complementarycolor,
    this.loading,
    this.error,
    this.style,
    this.strutStyle,
    this.textAlign,
    this.textDirection,
    this.locale,
    this.softWrap,
    this.overflow,
    this.textScaleFactor,
    this.maxLines,
    this.semanticsLabel,
    this.textWidthBasis,
    this.textHeightBehavior,
  }) : super(key: key);

  static Future<String> hexIntoName(String value) async {
    final colorcode = value.replaceAll("#", "").replaceAll("0xFF", "");

    var response = await http.get(
      Uri.parse("https://everycolorname.herokuapp.com/colorbyhex/$colorcode"),
    );
    if (response.statusCode == 200 || response.statusCode == 201) {
      colorNameModel = colorNameModelFromJson(response.body);

      return colorNameModel[0].name;
    } else {
      return "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: hexIntoName(hexColor),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return Text(
            snapshot.data.toString(),
            style: style != null
                ? style
                : (mode == ColorMode.textinvert)
                    ? TextStyle(
                        color:
                            colorNameModel[0].textinvert.toString() == "000000"
                                ? Colors.black
                                : Colors.white)
                    : (mode == ColorMode.invertedcolor)
                        ? TextStyle(
                            color: Color(int.parse("0xFF" +
                                colorNameModel[0].invertedcolor.toString())))
                        : (mode == ColorMode.complementarycolor)
                            ? TextStyle(
                                color: Color(int.parse("0xFF" +
                                    colorNameModel[0]
                                        .complementarycolor
                                        .toString())))
                            : style,
            strutStyle: strutStyle,
            textAlign: textAlign,
            textDirection: textDirection,
            locale: locale,
            softWrap: softWrap,
            overflow: overflow,
            textScaleFactor: textScaleFactor,
            maxLines: maxLines,
            semanticsLabel: semanticsLabel,
            textWidthBasis: textWidthBasis,
            textHeightBehavior: textHeightBehavior,
          );
        } else if (snapshot.hasError) {
          return error ?? const Text("Error");
        } else {
          return loading ?? const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
