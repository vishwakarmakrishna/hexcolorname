import 'package:flutter_test/flutter_test.dart';

import 'package:hexcolorname/hexcolorname.dart';

void main() {
  test('adds one to input values', () async {
    final hexColorName = HexColorName();
    expect(await hexColorName.hexIntoName("#000000"), "Black");
    expect(await hexColorName.hexIntoName("0xFF000000"), "Black");
    expect(await hexColorName.hexIntoName("#FFFFFF"), "White");
    expect(await hexColorName.hexIntoName("0xFFFFFFFF"), "White");
  });
}
