// import 'package:custom_sort_for_each/custom_sort_for_each.dart' as custom_sort_for_each;

void main(List<String> arguments) {
  // print('Hello world: ${custom_sort_for_each.calculate()}!');
  List<Person> persons = [
    Person('Administrator', 32),
    Person('User', 52),
    Person('Merchant', 52),
    Person('Administrator', 20),
    Person('User', 52),
    Person('Merchant', 23),
    Person('Administrator', 23),
    Person('User', 22),
    Person('Merchant', 55),
  ];

  persons.sort((p1, p2) {
    if (p1.roleWeight - (p2.roleWeight) != 0) {
      return p1.roleWeight - p2.roleWeight;
    } else {
      return p1.age.compareTo(p2.age);
    }
  });

  // persons.sort((p1, p2) => p1.age - p2.age);

  // persons.sort((p1, p2) => p1.role.compareTo(p2.role));
  /*
      hasil print berdasarkan compare role

      Administrator - 20
      Administrator - 23
      Administrator - 32
      Merchant - 23
      Merchant - 52
      Merchant - 55
      User - 22
      User - 52
      

  
   */

  /*
   *Penjelasan template;
    di dalam short ada sebuah fungsi yang akan menerima
     membandingkan objek didalamnya, dan mengembalikan nilai integer:

     1. Jika yang dikembalikan adalah negatif maka objek pertama yang dibandingkan akan
        diletakkan disebelah kiri
     2. jika yang dikembalikan adalah positif maka objek pertama yang dibandingkan akan 
        diletakkan disebelah kanan
     3. jika dikembalikan adalah o berarti objek memiliki nilai yang sama

   void sort([int Function(Person, Person) compare])
dart:core

Sorts this list according to the order specified by the [compare] function.

The [compare] function must act as a [Comparator].

List<String> numbers = ['two', 'three', 'four'];
// Sort from shortest to longest.
numbers.sort((a, b) => a.length.compareTo(b.length));
print(numbers);  // [two, four, three]
The default List implementations use [Comparable.compare] if [compare] is omitted.

List<int> nums = [13, 2, -11];
nums.sort();
print(nums);  // [-11, 2, 13]
A [Comparator] may compare objects as equal (return zero), even if they are distinct objects. The sort function is not guaranteed to be stable, so distinct objects that compare as equal may occur in any order in the result:

List<String> numbers = ['one', 'two', 'three', 'four'];
numbers.sort((a, b) => a.length.compareTo(b.length));
print(numbers);  // [one, two, four, three] OR [two, one, four, three] 

   */

  persons.forEach((element) {
    print(element.role + ' - ' + element.age.toString());
  });
}

class Person {
  final String role;
  final int age;

  Person(this.role, this.age);

  // jika menginginkan custome dalam urutan maka harus buat bobot

  int get roleWeight {
    switch (role) {
      case 'Merchant':
        return 1;
        break;
      case 'Administrator':
        return 2;
        break;
      default:
        return 3;
    }
  }
}
