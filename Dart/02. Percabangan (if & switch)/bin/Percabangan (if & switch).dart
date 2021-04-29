import 'dart:io';
void main(List<String> arguments) {
  int number = int.tryParse(stdin.readLineSync());
  String output;

  // cara pertama sesuai standar percabangan
  // if(number>0){
  //   print("positif");
  // }else if(number <0){
  //   print("negatif");
  // }else{
  //   print("nol");
  // }


  // cara kedua hanya 1 kondisi apa yang ada contoh dibawah ini,
  // bisa diringkas menjadi template cth. namaVariable = (number>0) ?(jika iya) "positif" :(jikatidak) "negatif"
    output = (number > 0) ? "Positif" : "negatif";
  // if(number>0){
  //   output = "positif";
  // }else{
  //   output = "negatif atau nol";
  // }
  print(output); // bisa dengan print ini
  print(output = (number > 0) ? "Positif" : "negatif"); // bisa dengan print ini bentuk string
  print((number > 0) ? number : number * -1); // dengan menampilkan nilainya positif semua bentuk int


  /*   switch(ekspresi1){
            case pilihan1:
                    statement
          definisi :
          a/ switch case ekspresinya berupa satuan
          (int, long, byte, short), String atau enum
        keterangan :
        1. switch adalah fungsion untuk menampung data
        2. case adalah kondisi dari data
        3. statement adalah output yang diinginkan
        }*/
  switch(number){
    case 1:
      print ("satu");
      break;
    case 2:
      print("dua");
      break;
    default:
      print("bilangan lain");
  }
}
