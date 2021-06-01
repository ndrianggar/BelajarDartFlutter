import 'person.dart';

class Student extends Person {
 Student() //: super(name: 'no name') { => ini cara untuk memanggil cunstructor lain 
                // yang memiliki variable name di class superclass
   {
    print('Constructor student'); // cara mengetahui pemanggilan cunstructor
    this.name;
  }

  // jika student ingin memiliki parameter maka bisa dengan syntax
  /* Student({String studentName = 'Student baru'}) : super(name : studentName) {}
     
     */

}
