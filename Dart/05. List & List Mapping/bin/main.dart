// List a/ kumpulan data yang bertype bisa string, int dll.

void main(List<String> arguments) {
  List<int> myList = [9, 8, 3, 1, 2, 6, 5, 7]; // tidak ada data
  List<int> list = [1, 2, 3]; // dengan data
  List<String> listMapping = [];

  // mengganti isi list
  list[1] = 10;

  int aksesList = list[0];

  // cara mencetak
  print(list[1]);
  print(list[0]);

  // for
  for (int index = 0; index < list.length; index += 1) {
    print(list[index]);
  }
  // penjelasan :
  // int index = 0; => inisiasi
  // index < 3; => kondisi berapa jumlah perulangannya
  // index += => menambahkan step nilai

  // for in hampir mirip dengan java :
  //  looping dengan for each
  //         System.out.println("ini adalah looping dengan for each");
  //         for(int cetakangka : arrayAngka){
  //             System.out.println("ini loping pada " + cetakangka);
  //         }
  // template :
  // for (nama in list){
  // }

  var message = 19921;

  for (int bilangan in list) {
    print("ini adalah list bilangan ke $bilangan");
  }

  // penjelasannya :
  // for => keyword
  // (int bilangan in list) => untuk type int pada variable bilang disetiap nilai list
  // print() => cetak nilainya

  // for each
  list.forEach((element) {
    print(element);
  });

  // penjelasannya:
  // list => data yang akan diloop
  // forEach => ini keywoard
  // dimana dia meminta type parameter dengan fungsi yang isinya integer
  // parameter fungsi dengan integer dia akan diisi oleh nilai data yang diloop

  // ada beberapa fungsi dasar dalam list
  myList.add(10);
  myList.addAll(list);
  myList.insert(1, 20); // memasukkan di list 1
  myList.insertAll(3, [30, 40]); // memasukkan dibaris ke3
  myList.remove(1); // menghapus list 1
  myList.removeLast(); // menghapus list terakgir
  myList.removeAt(1); // menghapus sesuai kehendak
  myList.removeRange(
      1, 3); // menghapus baris berapa sampai batas yang ditentukan
  myList.removeWhere((number) =>
      number % 2 !=
      0); // menghapus dengna menyertakan fungsi yang mengbalikan nila boolean
  list = myList.sublist(4);
  list.clear();
  myList.sort((a, b) =>
      b -
      a); // melakukan sorting, optional bisa memasukkan fungsi atau tidak yang digunakan untuk compare
  if (myList.every((number) => number % 2 != 0)) ;
  {
    print("tidak semua ganjil");
  }

  if (myList.contains(9)) {
    print("betul");
    // mengecek mengandung elemen tersebut tidak?
  }
  print('contoh myList add $myList');
  print('contoh sublist : $list');
  print('sort : $myList');
  if (myList.isEmpty) {
    print("kosong");
  }
  // set // kumpulan data yang unik
  Set<int> s;
  s = myList.toSet();

  myList.forEach((element) {
    listMapping.add("angka " + element.toString());
  });

  myList
      .map((e) => "angka + " + e.toString())
      .toString(); // harus diconvert ke list
  myList.forEach((e) {
    print(e);
  });
}
