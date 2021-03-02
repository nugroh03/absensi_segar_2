part of 'models.dart';

class UserModel extends Equatable {
  String user_id;
  String name;
  String notlp;
  String password;

  UserModel({this.user_id, this.name, this.notlp, this.password});

  factory UserModel.user(Map<String, dynamic> user) {
    return UserModel(
        user_id: user['user_id'].toString(),
        name: user['name'],
        notlp: user['notlp'],
        password: user['password']);
  }
  @override
  List<Object> get props => [
        user_id,
        name,
        notlp,
        password,
      ];
}
