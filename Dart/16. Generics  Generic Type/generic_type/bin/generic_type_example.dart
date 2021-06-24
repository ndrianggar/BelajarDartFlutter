/*
 * Generik adalah membuat type data menjadi generik type
 * 
 * semisal dengan contoh pada kelas folder lib:
 *  dateTime_secure_box
 *  intSecureBox 
 * 
 * ialah masing-masing memiliki type data yang berbeda, 
 * dateTime_secure_box => type data DateTime
 * intSecureBox => type data integer
 * 
 * 
 * // cara membuat generic type dengan format:
/*  
  keywoardclass NamaKelas <Jenisnyaapa/typedatanya>

  cth : class SecureBox<T>

     penjelasan :
       
       class = keyword class
      SecureBox = Nama kelas
      <> = untuk menampung jenis typedata
      T = Symbol/lambang dari generic Type, jadi dia melambangkan dari 
      type data apapun untuk menggantikan typedata tsb
  
    catatan : generic type ini jg sama dengan type data List
  

    cara pemanggilan di main
    typevar identifier = Objek/namaclassYangMenerapkanGenericType<TypeData>
 */
 * 
 */

import 'package:generic_type/dateTime_secure_box.dart';
import 'package:generic_type/intSecureBox.dart';
import 'package:generic_type/secureBox.dart';

void main(List<String> arguments) {
  var box = IntSecureBox(100, '123');
  // var awesome = Awesome();
  // print('awesome: ${awesome.isAwesome}');

  print(box.getData('123').toString());

  var box1 = DateTimeSecureBox(DateTime.now(), '123');
  print(box1.getData('123').toString());

  // cara penggunaan generic type
  var box2 = SecureBox<String>('hallo', '123');
  print(box2.getData('123').toString());

  // cara penggunaan generic type dengan class
  var box3 = SecureBox<Quran>(Quran('Mushaf Madinah'), '123');
  print(box3.getData('123').name);
}

// dan bisa dipakai untuk mengganti type data dengan class

class Quran {
  final String name;

  Quran(this.name);
}
