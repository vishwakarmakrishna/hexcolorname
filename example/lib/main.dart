import 'package:flutter/material.dart';
import 'package:hexcolorname/extras.dart';
import 'package:hexcolorname/hexcolorname.dart';

///
/// complementary Mode will return the complementary color of the given color #C2ABA2
/// inverted Mode will return the inverted color of the given color #5D463D
/// textinverted Mode will return the Black / White color of the given color #000000 for eg. for light color with will return black and for dark color will return white
///
const yourColor = "A2B9C2";
const String _colorString =
    '0xFF$yourColor'; // or '#A2B9C2'.replaceAll('#', '0xFF');
final Color _color = Color(int.parse(_colorString));
void main() => runApp(
      MaterialApp(
        home: Material(
          color: _color,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  "Style Mode of ColorCodeName:\n${(_color)}\nCadet Blue (Crayola)",
                  textAlign: TextAlign.center,
                ),
              ),
              Center(
                child: HexColorText(hexColor: _colorString),
              ),
              Center(
                child: Text("Complementary color Mode of HexColorText "),
              ),
              Center(
                child: HexColorText(
                    mode: ColorMode.complementarycolor, hexColor: _colorString),
              ),
              Center(
                child: Text("Inverted color Mode of HexColorText"),
              ),
              Center(
                child: HexColorText(
                    mode: ColorMode.invertedcolor, hexColor: _colorString),
              ),
              Center(
                child: Text("TextInvert color Mode of HexColorText "),
              ),
              Center(
                child: HexColorText(
                    mode: ColorMode.textinvert, hexColor: _colorString),
              ),
            ],
          ),
        ),
      ),
    );
