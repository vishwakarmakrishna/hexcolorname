# hexcolorname

[![pub package](https://img.shields.io/pub/v/hexcolorname.svg)](https://pub.dev/packages/hexcolorname)

A Flutter plugin for Color's Name by Color Code. Supports
iOS, Android, web, Windows, macOS, and Linux.

## Usage

To use this plugin, add `hexcolorname` as a [dependency in your pubspec.yaml file](https://flutter.dev/platform-plugins/).

### Example

``` dart

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
              child: ColorCodeName(
                  mode: ColorMode.complementarycolor, hexColor: _color)),
        ),
      ),
    );

```

See the example app for more complex examples.
