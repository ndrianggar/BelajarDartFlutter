class Person {
  String name;
  int age;
  static int maxAge = 150; // => diberi angka supaya membatasi angka yang diinput
  // keyword static ini menyatakan setiap member milik kelas atau metode tersebut

  Person(this.name, int age) {
    // age  disini dan diatas berbeda
    this.age = (age > 150) ? 150 : age;
    // untuk mengakses age yang diatas maka butuh this
  }

  // jika kita menset seperti ini ada 2 kekurangan :
 //  1. karena nilai maximum itu seolah2 ada diobjek yang pertama sedangkan
 // itu ada di nilai maxAge (objek person)
}
