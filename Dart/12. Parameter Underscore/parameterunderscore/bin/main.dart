// Fungsi Tanda Ignore di dalam dart / flutter 
// cara mengimplementasi di code
// namaFungsi (NamaParameter) ==> diganti dengan (_)
// 
// //



import 'package:parameterunderscore/person.dart';

import 'package:parameterunderscore/student.dart';
import 'package:test/test.dart';

/**
 * Paramater underscore artinya kita akan mengabaikan parameter tersebut
 * 
 */

void main(List<String> arguments) {
  var p = Person('joni', doingHobby: hobbyJoni);
// var p = Person('joni', doingHobby: (String name){ ==> bisa dengan cara ini tanpa buat method
// print('$name is swimming');
//
//});
  /**
   * Error ini artinya belum diberikan paramater pada functionya
   * dari seperti ini void hobbyJoni(){
   * menjadi void hobbyJoni(String namaParamater)  
   * 
   * 
   * The argument type 'void Function()'
   *  can't be assigned to the parameter type
   *  'dynamic Function(String)'.dart(a
   * 
   * 
   * 
   */

  p.takeRest();

  var st = Student('joni', competency: competencyion);
  st.showCompetency();
}

void competencyion(_) { // ==> contoh implementasi underscore digunakan ketika tidak ingin menggunakan
  print('mahir bil quran');
}

void hobbyJoni(String name) {
  print('$name is swimming');
}
