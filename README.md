# hexcolorname

[![pub package](https://img.shields.io/pub/v/hexcolorname.svg)](https://pub.dev/packages/hexcolorname)

A Flutter plugin for retrieving color names based on color codes.

## Features

- Retrieve color names for given color codes.
- Supports various color modes such as complementary color, inverted color, and text-inverted color.
- Works on iOS, Android, web, Windows, macOS, and Linux.

## Installation

Add `hexcolorname` as a dependency in your `pubspec.yaml` file:

```yaml
dependencies:
  hexcolorname: ^0.0.8
```

## Usage

To use this package, import it into your Dart code:

```dart
import 'package:hexcolorname/hexcolorname.dart';
```

Then, you can use the `HexColorText` widget to display color names:

```dart
const String _color = '#A2B9C2';

void main() => runApp(
      const MaterialApp(
        home: Material(
          child: Center(
              child: HexColorText(
                  mode: ColorMode.complementarycolor, hexColor: _color)),
        ),
      ),
    );
```

See the [example app](example) for more complex usage examples.

## Documentation

For more detailed documentation, check out the [API reference](https://pub.dev/documentation/hexcolorname/latest/).

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
