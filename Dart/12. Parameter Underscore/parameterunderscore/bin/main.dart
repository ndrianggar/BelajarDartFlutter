import 'package:parameterunderscore/person.dart';

/**
 * Paramater underscore artinya kita akan mengabaikan parameter tersebut
 * 
 */

void main(List<String> arguments) {
  var p = Person('joni', doingHobby: hobbyJoni);

  /**
   * Error ini artinya belum diberikan paramater pada functuinya
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
}

void hobbyJoni(String name){
  
}




