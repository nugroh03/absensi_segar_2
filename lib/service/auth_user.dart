part of 'services.dart';

class AuthUser {
  String id;
  String name;
  String notlp;
  String password;

  AuthUser({this.id, this.name, this.notlp, this.password});

  factory AuthUser.userAuth(Map<String, dynamic> userAuth) {
    return AuthUser(
        id: userAuth['user_id'].toString(),
        name: userAuth['name'],
        notlp: userAuth['notlp'],
        password: userAuth['password']);
  }

  static Future<AuthUser> login(String notlp, String password) async {
    String apiURL = apiurl + "login";

    var apiResult =
        await http.post(apiURL, body: {"notlp": notlp, "password": password});
    var login = json.decode(apiResult.body);

    return AuthUser.userAuth(login);
  }

  /*static Future<AuthUser> signIn(String id) async {
   
      String apiURL = apiurl + "/login";

      var apiResult = await http.get(apiURL);
      var singin = json.decode(apiResult.body);
      return AuthUser.userAuth(singin);
    
  }*/
}
