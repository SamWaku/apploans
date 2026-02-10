//singleton class that will only exist once in a lifetime
import 'package:dio/dio.dart';

class HttpUtil{
  static HttpUtil _intstance = HttpUtil._internal();
  factory HttpUtil(){
    return _intstance;
  }

  late Dio dio;
  HttpUtil._internal(){
    BaseOptions options = BaseOptions(
      baseUrl: "http://127.0.0.1:5041",
      connectTimeout: Duration(seconds: 5),
      receiveTimeout: Duration(seconds: 5),
      headers: {},
      contentType: "application/json",
    );
    dio = Dio(options);
  }

  Future post(String path, {dynamic data}) async {
    var response = await dio.post(path, data: {});
    return response;
  }
}