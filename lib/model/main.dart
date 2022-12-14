import 'package:flutter/material.dart';
import 'package:hexcolorname/extras.dart';
import 'package:hexcolorname/hexcolorname.dart';

///
/// complementary Mode will return the complementary color of the given color #C2ABA2
/// inverted Mode will return the inverted color of the given color #5D463D
/// textinverted Mode will return the Black / White color of the given color #000000 for eg. for light color with will return black and for dark color will return white
///
const String _color = '#A2B9C2';

void main() => runApp(
      const MaterialApp(
        home: Material(
          child: Center(
            child: HexColorText(
              mode: ColorMode.complementarycolor,
              hexColor: _color,
            ),
          ),
        ),
      ),
    );
