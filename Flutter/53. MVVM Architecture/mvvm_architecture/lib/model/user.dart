import 'dart:convert';
import 'package:http/http.dart' as http;

class User {
  String? id;
  String? email;
  String? firstName;
  String? lastName;
  String? avatar;

  User({this.id, this.email, this.firstName, this.lastName, this.avatar});

  // method merubah data user dari json
  factory User.createUser(Map<String, dynamic> object) {
    return User(
      id: object["id"].toString(),
      email: object["email"].toString(),
      firstName: object["firsName"].toString(),
      lastName: object["lastName"].toString(),
      avatar: object["avatar"].toString(),
    );
  }

  // method untuk mengambil user dari aPi dan mengembalikan dengan nilai int
  static Future<User> getUserFromApi(int id) async {
    // buat variable alamat API
    String apiURL = "https://reqres.in/api/users" + id.toString();

    // tampung alamat API yang sudah ada data
    var apiResult = await http.get(Uri.parse(apiURL));
    // convert data json yang typenya dynamic dengan mendecod
    var jsonObject = json.decode(apiResult.body);
    // rubah data yang sudah didecode dengan string dari sumber data yang dynamic(value, ada key)
    var userData = (jsonObject as Map<String, dynamic>)['data'];

    return User.createUser(userData);
  }
}

// berfungsi untuk dipanggil pada ViewModel (bloc)
class UninitializedUser extends User{
  
}