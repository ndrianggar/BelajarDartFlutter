class Person {
  String name; // memiliki parameter

  Function(String name)
      doingHobby; // membuat fungsi yang diberinama doingHobby;

  Person(this.name,
      {this.doingHobby}); // membuat constructor dengan parameter yg menggunakan
  // keyword this

  void takeRest() {
    // buat kondisi jika doingHobbynya tidak sama dengan null maka lakukan ini

    if (doingHobby != null) {
      doingHobby(name);
    }
  }
}
