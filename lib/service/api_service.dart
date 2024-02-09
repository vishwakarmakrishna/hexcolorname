import 'package:dio/dio.dart';
import 'package:hexcolorname/model/color_name_model.dart';
import 'package:retrofit/retrofit.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: "https://everycolorname.vercel.app/")
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @GET("colorbyhex/{colorcode}")
  Future<List<ColorNameModel>> getColorName(
      @Path("colorcode") String colorCode);
}
