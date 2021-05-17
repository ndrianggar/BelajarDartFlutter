class Person {
  String name;

  Person({String name = 'no name'}) {
    print("Constructor Person");
    this.name = name;

    /*
      jika ingin menggunakan funtion named parameter 
      Person({String name});

      maka memanggilnya dengan syntax:
      Person person(namaattribut: "valueattribut");

      mencetak dengan syntax:
      print(person.namaattribut);
    
     */

    // name = "no name";

    // print("sedang membuat objek persin");
    /*
     * Cara memberikan parameter pada constructor dengan attribute yang ada 
     * di kelas maka dengan cara memberikan Person(String name){
     *  kemudian memberikan keyword this.namaattribute = name attribut di kelas
     * }
     * 
     * dengan seperti itu maka wajib memberikan parameter pada objek
     */

    /**
     * Tambahan :
     * ketika constructor itu dipanggil yg
     * pertama x muncul adalah yg superclass
     * 
     * kasus =>
     * bagaimana cara memanggil constructor yang kosong
     * yaitu dengan cara : 1. merubah parameter constructor dengan Optional parameter
     * Person({String : namaparameter}){}
     * 
     *  2. Menentukan dengan cara memanggil constructor yang lain
     *  3. NamaConstructor() : super('student baru');
     * 
     * 
     * 
     */
  }
}
