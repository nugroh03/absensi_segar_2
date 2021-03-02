part of 'services.dart';

class User {
  static Future<AuthUser> getUser(String id) async {
    String apiURL = apiurl + "user";

    var apiResult = await http.get(apiURL);
    var jsonDecode = json.decode(apiResult.body);
    var getuser = jsonDecode["data"];

    return AuthUser.userAuth(getuser);
  }
}
