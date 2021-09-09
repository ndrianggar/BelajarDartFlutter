import 'dart:convert';
import 'package:http/http.dart' as http;

class UserModel {
  String id;
  String name;

  UserModel({this.id, this.name});

  factory UserModel.createUser(Map<String, dynamic> data) {
    return UserModel(
      id: data['id'].toString(),
      name: data['first_name'] + " " + data["last_name"],
    );
  }

  static Future<UserModel> connectToAPI(String id) async {
    // definisikan link API
    String apiURL = "https://reqres.in/api/users/" + id;

    // dapatkan url dengan await dengan data yg belum diolah
    var apiResult = await http.get(Uri.parse(apiURL));

    // diolah data json dengan decode
    var jsonObject = json.decode(apiResult.body);

    // ambil user data
    var userData = (jsonObject as Map<String, dynamic>)['data'];

    return UserModel.createUser(userData);
  }
}
