import 'package:flutter/material.dart';
import 'package:hexcolorname/hexcolorname.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

///
/// complementary Mode will return the complementary color of the given color #C2ABA2
/// inverted Mode will return the inverted color of the given color #5D463D
/// textinverted Mode will return the Black / White color of the given color #000000 for eg. for light color with will return black and for dark color will return white
///

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ColorModeDemo(),
    );
  }
}

class ColorModeDemo extends StatefulWidget {
  @override
  _ColorModeDemoState createState() => _ColorModeDemoState();
}

class _ColorModeDemoState extends State<ColorModeDemo> {
  final TextEditingController _controller =
      TextEditingController(text: "A2B9C2");

  void _openColorPicker() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Pick a color'),
          content: SingleChildScrollView(
            child: ColorPicker(
              pickerColor: _controller.text.toColor(),
              onColorChanged: (Color color) {
                setState(() {
                  _controller.text = color.hexWithoutPrefix;
                });
              },
              pickerAreaHeightPercent: 0.8,
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Color Mode Demo'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              controller: _controller,
              onChanged: (_) {
                if (_.length == 6 || _.length == 3) {
                  setState(() {});
                }
              },
              decoration: InputDecoration(
                  labelText: 'Enter color',
                  suffixIcon: IconButton(
                    onPressed: _openColorPicker,
                    icon: Icon(Icons.pending),
                  )),
            ),
            SizedBox(height: 20),
            ListTile(
              title: Text(
                "Style Mode of HexColorText: \n${(_controller.text.hexWithoutPrefix)}",
                textAlign: TextAlign.center,
              ),
              subtitle: HexColorText(
                  key: UniqueKey(),
                  hexColor: _controller.text.removeHexPrefix()),
            ),
            SizedBox(height: 20),
            ListTile(
              title: Text(
                "Complementary color Mode of HexColorText ",
                textAlign: TextAlign.center,
              ),
              subtitle: HexColorText(
                  key: UniqueKey(),
                  mode: ColorMode.complementarycolor,
                  hexColor: _controller.text),
            ),
            SizedBox(height: 20),
            ListTile(
              title: Text(
                "Invertedcolor color Mode of HexColorText ",
                textAlign: TextAlign.center,
              ),
              subtitle: HexColorText(
                  key: UniqueKey(),
                  mode: ColorMode.invertedcolor,
                  hexColor: _controller.text),
            ),
            SizedBox(height: 20),
            ListTile(
              title: Text(
                "Textcolor color Mode of HexColorText ",
                textAlign: TextAlign.center,
              ),
              subtitle: HexColorText(
                  key: UniqueKey(),
                  mode: ColorMode.textinvert,
                  hexColor: _controller.text),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
