class Person {
  String name;

  Person({String name = 'no name'}) {
    // print('Constructor Person'); // cara mengetahui pemanggilan cunstroctor
    this.name = name;

    /*
      + jika parameter tidak memiliki deklarasi dari maka akan error (artinya memaksa untuk memberikan paramater), 
      BENTUK ERRORNYA

  "The superclass 'Person' doesn't have a zero argument constructor.""

      solusinya ialah dengan menggunakan named parameter / optional parameter pada kelas turunannya
      jika ingin menggunakan funtion named parameter 
      Person({String name});

      maka memanggilnya dengan syntax:
      Person person(namaattribut: "valueattribut");

      mencetak dengan syntax:
      print(person.namaattribut);
    
     */

    // name = "no name";

    // print("sedang membuat objek person");
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
