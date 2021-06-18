/*
 * Sebetulnya Variable yang didefinisikan ialah REFERENCE/POINTER/IDENTIFIER 
 * dia (variable) bukan menampung nilai tetapi menampung alamat yang menunjuk pada nilai tersebut
 *  
 * Tree firstTree = Tree(numberOfFruits: 5);
 * 
 * Penjelasan :
 * firstTree bukanlah variable yang akan diberi nilai tapi dia  (dia reference/pointer/identifier) menunjuk
 * pada objek yang dibuat
 * 
 * pada baris Tree firstTree = Tree(numberOfFruits: 5); 
 * pada kata Tree...(dst) ini akan membuat objek pada memory dan alamat memory tsb ditunjuk oleh fisrttree
 * 
 * 
 * Penjelesan memory secara singkat
 * jika kita membuat buah pointer lagi dan membandingkan misalnya:
 * 
 * Tree secondTree = Tree(numberOfFruits: 5); 
 * 
 * membandingkan => firstTree != secondTree (maka ini tidak sama karena berbeda objek)
 * 
 * ! artinya (tidak sama dengan)
 * 
 * Proses pembandingkan di memory
 * contohnya : Tree thirdTree = firstTree();
 * 
 * maka yang terjadi adalah alamat yang dimiliki oleh firstTree akan dicopykan ke thirdTree
 *  
 * ==========================||==========================
 * FINAL berfungsi untuk membuat 1 buah pointer objek yang sama seterusnya.
 * sifatnya :
 *  1. you cannot change it
 *  2.  You must initialize it directly or via constructor
 *  
 * 
 * contoh ketika final diisi dengan inisiasi  
 * final int x; => ini tidak boleh harus langsung diinisiasi
 * final int x = 5; => ini yang boleh
 * 
 * x = 7; => ini tidak boleh, hanya boleh 1x
 * 
 * 
 * contoh ketika final diisi dalam constructor
 * 
 * class RegularClass{
 * final int number;
 * 
 * RegulerClass({this.number});
 * }
 * 
 * ==========================||==========================
 * CONST ada 2:
 * Literal constant (nilai yang langsung ditulis pada variable tsb). Example: double x = 2.5;
 * Symbolic constant (constanta yang diberikan nilai dengan Symbol (nama) tsb). Example: const x = 2.5;
 *  
 * Perbedaan Const dengan Final
 * 
 * Final => selalu menunjuk objek yang sama
 * Const => nilainya selalu diasosiasikan pada objek yang sama
 *    - dan nilai itu dibuat ketika compile time (diakhir waktu) bukan runtime (waktu berjalan)
 *    - hanya bisa dideklarasi do top level atau static / variable local
 *       diluar main
 *  
 *   cth : Tree firstTree = const Tree(numberOfFruits:5); 
 *           => ini artinya  dia membuat pohon (objek) lalu mengasosiasikan nilai tersebut dengan Tree(numberOfFruits:5)
 *              jika ada yang memanggil objek Tree(numberOfFruits:5); => berarti yang dipanggil adalah objek tersebut, selama aplikasi ini berjalan
 * 
 *         Tree secondTree = const Tree(numberOfFruits:5); 
 *         jika objek ini (secondTree) dibuat maka dia akan mengecek kepada objek yang sama
 * 
 * 
 * Keuntungan pakai constanta :
 * 1. tidak perlu buat objek berulang-ulang
 * 2. lebih irit memory
 * 3. constanta dibuat pada saat compile time bukan run time
 * 4. 
 */
const pi = 2.5; // => variable global

void main(List<String> arguments) {
// jika membuat variable dengan objek kelas yang reguler
  var a = Constclass(number: 5);
  var b = Constclass(number: 5);
  print(pi);
// jika membuat variable dengan objek kelas yang reguler
  var c = const Constclass(number: 5);
  var d = const Constclass(number: 5);

// untuk mengecek bisa menggunakan keywoard identical
  print(identical(a, b));
  print(identical(c, d));

  print('ini hasil ${a}');
}

class RegulerClass {
  final int number;
  // misalnya kita akan menambahkan variable lokal yang langsung diinisiasi
  /* dengan menggunakan keywoard const : 
   * 
   * const myConst = 12; => ini akan error, harus ditambahkan keywoard static 
   * 
   *  
   * 
   * 
  */
  static const myConst = 12;

  RegulerClass({this.number}) {
    const anotherConst = 14; //=> variable local
    print(anotherConst);
  }
}

class Constclass {
  final int number;

  const Constclass({this.number});
}
