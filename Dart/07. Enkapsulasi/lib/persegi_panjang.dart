class PersegiPanjang {
  double _panjang; // tanda underscore adalah menunjukan type data private
  double _lebar;

  // Penjelasan getter dan setter
  /*
  *  untuk mengubah nilai private nilai data dengan setter
  *  buat fungsi void namaFungsi
  *  kenapa void? karena void tidak mengembalikan nilai apapun hanya merubah
  *  formatnya : void namaFungsi(tipeData namaTampungan){
  *     kondisiIF(namaTampungan < 0){
  *     namaTampungan *= -1;
  * }
  *
  * _dataYangDiProtect = namaTampungan;
  *
  *
  * */

  // property setter
  void set lebar(double value){
    if(value < 0){
      value *=-1;
    }
    _lebar = value;
  }

  // property getter
  double get lebar{ // tidak perlu dibuat kurung buka dan tutup
  // ketika memanggil di main tidak
    // perlu menggunakan underscore hanya memanggil propertynya
    return _lebar;
  }

  // setter
  void setPanjang(double value) {
    if (value < 0) { // dicek terlebih dahulu sesuai kondisi
      value *=-5; // dikalikan data supaya tidak < 0
    }
    _panjang = value;
  }

  // getter
  double getPangjang(){
    return _panjang;
  }


  double hitungLuas() { // tidak tepat dirubah dengan membuat property dibawah
    return this._panjang * this.lebar;
  }

  double get luas => this._panjang * this.lebar;
}


/*
    Kesimpulan :
    1. yang dijadikan method itu ialah apa yang bisa dilakukan
    kelas tersebut
    2. apa yang dimiliki oleh kelas jadikan field data

    3. contoh pembuatan nama method dengan nama hitungluas(){} ini tidak tepat
    yang tepat adalah luas(){}
 */