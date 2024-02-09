import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:hexcolorname/model/color_name_model.dart';
import 'package:hexcolorname/service/api_service.dart';
import 'package:hexcolorname/utils/utils.dart';

class ApiClient {
  late ApiService _apiService;

  ApiClient() {
    final dio = Dio();
    _apiService = ApiService(dio);
  }

  Future<String?> hexIntoName(String value) async {
    try {
      final response = await _apiService.getColorName(value.removeHexPrefix());
      return response.isNotEmpty ? response[0].name : "";
    } catch (e) {
      if (kDebugMode) {
        print("Error: $e");
      }
      return "";
    }
  }

  Future<List<ColorNameModel>?> hexIntoColorModel(String value) async {
    try {
      return await _apiService.getColorName(value.removeHexPrefix());
    } catch (e) {
      if (kDebugMode) {
        print("Error: $e");
      }
      return null;
    }
  }
}
