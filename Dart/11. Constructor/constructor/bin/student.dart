import 'person.dart';

class Student extends Person {
  Student() : super(name : 'student baru') {
    print('Constructor student');
  }

  // jika student ingin memiliki parameter maka bisa dengan syntax
   /* Student({String studentName = 'Student baru'}) : super(name : studentName) {}
     
     */

}
