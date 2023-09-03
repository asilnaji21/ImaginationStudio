import 'package:project_app/presentaion/views/main/domain/model/user_model.dart';

class CacheData {
  static UserModel? user;
  void setUser(UserModel value) {
    CacheData.user = value;
  }

  UserModel? getUser() {
    return user;
  }
}
