// import 'package:assert_try/assert_try.dart' as assert_try;
import 'package:meta/meta.dart';

void main(List<String> arguments) {
  // print('Hello world: ${assert_try.calculate()}!');
  Quran q;

  // q = Quran(name: null); // akan ada exception

  // q = Quran(name: 'null');
  // print(q.tahun);

  // jika statement yang ada kemungkinan error maka menggunakan try catch

  // maka bungkus dengan try
  try {
    q = Quran(name: null);
  } catch (e) {
    print(e);
  }

  // penjelasan :
  /* try adalah membungkus error pada code q = Quran(name:null);
   * catch (e) adalah menampung error pada huruf e
   * 
   */
  print('hello');
  
}

class Quran {
  final String name;
  final DateTime tahun = DateTime.now();

  // cara membuat data tsb harus diisi maka perlu keyword @required
  Quran({@required this.name, tahun}) {
    // jika kita menginginkan name tersebut tidak boleh kosong/null
    // maka harus menggunakan keyword assert (menegaskan/meyakinkan)

    assert(name != null, "You mus give the person'n name");
  }
}
