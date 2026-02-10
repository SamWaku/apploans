//singleton class that will only exist once in a lifetime
class HttpUtil{
  static HttpUtil _intstance = HttpUtil._internal();
  factory HttpUtil(){
    return _intstance;
  }

  HttpUtil._internal(){

  }
}