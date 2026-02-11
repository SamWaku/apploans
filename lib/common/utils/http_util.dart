//singleton class that will only exist once in a lifetime
import 'package:apploans/common/values/constants.dart';
import 'package:dio/dio.dart';

class HttpUtil{
  static HttpUtil _intstance = HttpUtil._internal();
  factory HttpUtil(){
    return _intstance;
  }

  late Dio dio;
  HttpUtil._internal(){
    BaseOptions options = BaseOptions(
      baseUrl: AppConstants.SERVER_API_URL,  //android emulator
      connectTimeout: Duration(seconds: 5),
      receiveTimeout: Duration(seconds: 5),
      headers: {},
      contentType: "application/json",
    );
    dio = Dio(options);
  }

  Future post(String path, {dynamic data, Map<String, dynamic>? queryParameters}) async {
    var response = await dio.post(path, data: data, queryParameters: queryParameters);
    print(response.data);
    return response.data;
  }
}