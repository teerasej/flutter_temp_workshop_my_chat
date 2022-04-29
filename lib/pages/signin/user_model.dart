// lib/pages/signin/user_model.dart

class UserModel {
  String? id;
  String? profileImagePath;

  String username;
  String password;

  UserModel(this.username, this.password, {this.id, this.profileImagePath});
}
