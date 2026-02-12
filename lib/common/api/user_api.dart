import '../entities/user.dart';
import '../utils/http_util.dart';

class UserApi {
  static login({LoginRequestEntity? params}) async {
    var response = await HttpUtil().post(
      '/api/app-signin',
      data: params?.toJson(),
    );
    return UserLoginResponseEntity.fromJson(response);
  }
}
