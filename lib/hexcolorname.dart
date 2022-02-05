library hexcolorname;

import 'package:http/http.dart' as http;

import 'model/colorName.dart';

class HexColorName {
  Future<String> hexIntoName(String value) async {
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
}
