library hexcolorname;

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'model/colorName.dart';

class ColorCodeName extends StatelessWidget {
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
      final colorNameModel = colorNameModelFromJson(response.body);

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
          snapshot.data.toString();
          return Text(
            snapshot.data.toString(),
            style: style,
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
