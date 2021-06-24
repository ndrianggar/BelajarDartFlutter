//// RIGHT
///

class User {
  // User related things
}

// modul highlevel
class UserManager {
  final IDataStorage dataStorage;

  UserManager({this.dataStorage});

  void saveUserData(User user) {
    dataStorage.saveData(user);
  }
}

abstract class IDataStorage {
  void saveData(User user);

}


// modul lowlevel
class FirebaseStorage implements IDataStorage{
  @override
  void saveData(User user) {
    // TODO: implement saveData
    // connect to firebase
    // save data
  }

}

class LocalStorage implements IDataStorage{
  @override
  void saveData(User user) {
    // TODO: implement saveData
    // connect to local storage
      // save data
  }

}
