// Futuror dapat mengakomodir tipe kembalian integer / kembalian tipe data lainnya
import 'dart:async';

void main(List<String> arguments) async {
  // cara inisiasi objek untuk mengambil data
  User user = User();
  UserManager userManager = UserManager(dataStorage: FirebaseStorage());

  // mencetak data user - storagefirebase
  print(await userManager.getUserAge(user));
}

class User {
  int age = 0;
}

// modul highlevel
class UserManager {
  final IDataStorage dataStorage;

  UserManager({this.dataStorage});

  void saveUserData(User user) {
    dataStorage.saveData(user);
  }

  FutureOr<int> getUserAge(User user) async {
    return await dataStorage.getUserAge(user);
  }
}

abstract class IDataStorage {
  void saveData(User user);
  FutureOr<int> getUserAge(user);
}

// modul lowlevel
class FirebaseStorage implements IDataStorage {
  @override
  void saveData(User user) {
    // TODO: implement saveData
    // connect to firebase
    // save data
  }

  @override
  FutureOr<int> getUserAge(user) async {
    // TODO: implement getUserAge : Ambil data di firebase
    await Future.delayed(Duration(seconds: 3));
    return 20; // ini nilai yg didapat misal 20 maka direturn sesuai yg didapatkan, jika datanya banyak maka berbeda
  }
}

class LocalStorage implements IDataStorage {
  @override
  void saveData(User user) {
    // TODO: implement saveData
    // connect to local storage
    // save data
  }

  @override
  int getUserAge(user) {
    // TODO: implement getUserAge : Ambil tgl lahir dari user
    // bandingkan tanggal lahir dengan tanggal sekarang
    // lalu hitung umurnya
    return 10; // ini nilai yg didapat misal 20 maka direturn sesuai yg didapatkan, jika datanya banyak maka berbeda
  }
}
