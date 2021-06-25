import 'user.dart';

class Services {
  Future<User> getUserData() async {
    // Asumsing that we get user data from database and the returnt it
    return User();
  }
}

class ServicesSingleton {
  // buat field static yang typenya private
  static final ServicesSingleton _instance = ServicesSingleton._internal();

  //buat constructor
  ServicesSingleton._internal();

  // buat factory yang berfungsi mengembalikan nilai singleton yang type kelasnya sama
  // bisa mengembalikan objek yang sudah dibuat atau yang lama
  factory ServicesSingleton() {
    return _instance;
  }

  Future<User> getUserData() async {
    return User();
  }
}
