import 'dart:convert';

import 'package:http/http.dart' as http;

// 1. Langkah satu Buat Data

class PostResult {
  // nama variablenya boleh beda
  String id;
  String name;
  String job;
  String created;

  PostResult({
    this.id,
    this.name,
    this.job,
    this.created,
  });

// 2. Langkah kedua Buat Mapping data ke objek json

  // buat factory  untuk json object hasil mapping datanya
  factory PostResult.createPostResult(Map<String, dynamic> object) {
    // kenapa menggunakan Map, String, Dynamic?

    /**
     * Map sebab type data yang ada diweb service berupa mapping data
     * cth {  "key" : "value"
     *        "id"  : "44"
     *        "dateTime" : 2021-07-01 090230
     *      }
     * 
     * String sebab pada key disana berupa string tandanya diapit dengan 2 tanda kutip
     *  "key"
     * 
     * Dynamic sebab pada nilai memungkinkan nilai yang dikembalikan apapun
     * "key" : "value" => string
     *        "id"  : "44" => angka
     *        "dateTime" : 2021-07-01 090230 => waktu
     * 
     * 
     */

    return PostResult(
        id: object['id'], // id diambil dari identifier objek fungsi factory
        name: object['name'],
        job: object['job'],
        created: object['createdAt']);
  }

// 3. Bagian ketiga untuk koneksi ke API

  static Future<PostResult> connectToAPI(String name, String job) async {
    String apiURL = "https://reqres.in/api/users";

    // http ini methodnya async karena ada method Future
    // tambahkan await
    var apiResult =
        await http.post(Uri.parse(apiURL), body: {"name": name, "job": job});

    // untuk mendapat objek maka buat variable
    // tambahkan / import decode
    var jsonObject = json.decode(apiResult.body);

    // butuh return dari object kelas yg dibuat
    // dengan json objek yang sudah didecode
    return PostResult.createPostResult(jsonObject);
  }
}
