// import 'package:async_await_future/async_await_future.dart'
//     as async_await_future;

/*Keywoard Async await future
 * 
 * Methode ada 2 macam :
 * 1. Synchronus 
 * 2. Asynchronus  ditandai dengan keyword async setelah function, 
 *    dipanggil dengan keyword await, dan memiliki tipe kembalian
 *    Future
 *    
 * - Berfungsi sebagai memproses data tanpa harus menunggu
 * 
 * - Cara penggunaan
 *  Future<typedata> namaFungsi() async{
 * }
 *  contoh :
 *   Future <void> getDataAsync() async{
 *   await Future.delayed(Duration(seconds:3));
 * }
 * 
 *   Penjelasan :
 *  - Future ialah tipe kembalian yang tidak langsung dikembalikan
 *    dan akan dikembalikan di masa depan
 *  - await ialah keywoard untuk menunda pengiriman data 
 *  **/

void main(List<String> arguments) async {
  // print('Hello world: ${async_await_future.calculate()}!');
  var p = Person();

  print('job 1');
  print('job 2');
  await p.getDataAsync(); // implementasi data dibuat menunggu 
  print('job 3 ' + p.name);
  print('job 4');

  // Studi kasus; bagaimana caranya agar print('job 3') yang nunggu?
  /**
   *  caranya ada 2 :
   * 1. Memindahkan print job 4 ke atas p.getData
   * 2. Memasukkan  print('job 3 ' + p.name); kedalam await p.getDataAsync().then((value) ={
   *    print('job 3 ' + p.name); 
   * });
   * 
   * then ialah satu buah fungsi yang meminta parameter value, yang akan direturn oleh fungsi get.DataAsync
   * value bisa diganti dengan (_) underscore
   */
}

class Person {
  String name = 'default name';

  void getData() {
    name = 'Joni';
    print('get data [done]');
  }

  Future<void> getDataAsync() async {
   await Future.delayed(Duration(seconds: 3));
    name = 'Joni';
    print('get data [done]');
  }
}
