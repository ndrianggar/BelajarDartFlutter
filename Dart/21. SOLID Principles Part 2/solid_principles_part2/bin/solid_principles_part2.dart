
//// SOLID
//// S-ingle Responsibility Principle
///  O-pen / Closed Principle
///  L-iskov Subtitution Principle
///  I-nterface Segregation Principle
///  D-ependency Inversion Principle
///
///S : (disarankan untuk tidak memiliki superclass (bisa melakukan apapun),
///     maksudnya hanya bisa memiliki responsibility yang khusus; untuk apapun )
///O : (disarankan kelas kita tidak perlu diubah2, )
///
///L : (setiap kelas yang memiliki turunan dari kelas induknya harus memiliki sifat/prilaku yang sama )
///
///I : (ketika kita membuat interface sebaiknya spesifik sesuai tujuan tertentu)
///     jangan memasukkan kelas yang bukan sesuai tujuan
/// 
/// D : (High level modul ini tidak perlu bergantung pada low level modul, dua2nya itu harus bergantung pada abstraction
///      , sedangkan abstraction tidak boleh bergantung pada detail, detaillah yang harus bergantung pada abstraction  )
///
///  kemungkinan untuk perubahan itu dilakukan oleh low level
///  misal : penyimpanan user ke firebase, kemudian kedepan inginnya simpan di mysql, kemudian disimpan di local aja deh,,
///          kemungkinan dari permisalan ini lebih besar, karena itukan teknologi,
///          sedangkan fitur untuk mesinnya tetap ada.
/// 
///         bagian yang sering berubah2 ini disebut low level.
/// 
///         solusinya adalah membuat abstraction itu seperti kontrak, jd di high level itu ada modul 
///          alat untuk ngesave, alatnya apa itu tidak perduli.
///         
///         yang low levelnya juga sama hnya bergantung pada abstractionya, jd tidak perduli siapa usernya, siapa yang manggil, 
///         yang dia tahu dia harus bisa ngesave ke database yang dituju
/// 
/// 
void main(List<String> arguments) {

}
