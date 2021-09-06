import 'package:bloc/bloc.dart';
import 'package:mvvm_architecture/model/user.dart';

// buat kelas dengan extends class BLock library dengan nilai int dengan mengembalikan nilai User
/* Bloc<int, user>  

  Bloc = memanggil objec dari library bloc
  <int> = memasukkan data yang tipenya int (id berapa)
  <User> = ialah nilai yang dikembalikan dari model user berupa id

*/

class UserBloc extends Bloc<int, User> {
  UserBloc({required initialState}) : super(initialState);

  // keterangan :
  /*
    Jika kembaliannya ialah objek maka datanya tidak bisa null
    untuk itu, kelas UninitializedUser dibuat untuk menampung user yang belum di init 
   */
  @override
  get initialState => UninitializedUser();

  @override
  Stream<User> mapEventToState(int event) async* {
    try {
      // untuk menjaga jika API bermasalah

      User user = await User.getUserFromApi(event);
      yield user; // mengeluarkan user dengan yield
    } catch (_) {}
  }
}
