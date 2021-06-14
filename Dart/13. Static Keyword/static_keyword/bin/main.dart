import 'package:static_keyword/static_keyword.dart';

void main(List<String> arguments) {
  var p = Person('david', 170);

  print(Person.maxAge); // keluarnya 150, karena kita batasi 150

  print(p);

  /**
 print(p.maxAge); ini akan terjadi error, karena maxAge bukan milik kelas p, 
 melainkan person

Static field 'maxAge' can't be accessed through an instance.
Try using the class 'Person' to access th
   * 
   */
}
