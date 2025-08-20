import 'dart:io'; // LIBRARY UNTUK INPUT/OUTPUT
void main() {
  // DEKLARASI VARIABEL EKSPLISIT
  // String name = "John Wick";
  // int age = 25;
  

  // DEKLARASI VARIABEL IMPLISIT
  // var city = "New York";
  // var height = 1.75;

  // DEKLARASI VARIABEL DENGAN FINAL DAN CONST EKSPLISIT
  // final String country = "USA";
  // const double pi = 3.14;

  // DEKLARASI VARIABEL DENGAN FINAL DAN CONST IMPLISIT
  // final language = "Dart";
  // const daysInWeek = 7;

  // DEKLARASI VARIABEL TIPE DATA NULLABLE
  // String nonNullableName = "Alice"; // VARIABEL INI TIDAK BISA BERNILAI NULL
  // String? nullableName = null; // VARIABEL INI BISA BERNILAI NULL

  // DEKLARASI ARRAY(LIST) DENGAN TIPE EKSPLISIT
  // List<String> daftarBuah = ['Apel', 'Jeruk', 'Mangga'];
  // List<int> daftarAngka = [1, 2, 3, 4, 5];

  // DEKLARASI ARRAY(LIST) DENGAN TIPE IMPLISIT
  // var daftarBuah = ['Apel', 'Jeruk', 'Mangga']; 
  // var daftarAngka = [1, 2, 3.14];

  // DEKLARASI ARRAY(LIST) DENGAN FINAL DAN CONST
  // final List<String> namaTim = ['Sunny', 'Daniel'];
  // namaTim = ['Riko']; // ERROR: TIDAK BISA MENGUBAH REFERENSI
  // namaTim.add('Rani');  // BERHASIL: BOLEH MENAMBAH ISI LIST

  // const List<String> daftarTetap = ['A', 'B'];
  // daftarTetap.add('C'); // ERROR: TIDAK BISA MENAMBAH ISI

  // NOTES
  /*
  - Variabel dengan 'var' dapat berubah tipe data jika diperlukan
  - Variabel dengan 'final' hanya dapat diinisialisasi sekali dan tidak dapat diubah
  - Variabel dengan 'const' bersifat konstan dan tidak dapat diubah  
  - Selalu gunakan tipe data yang tidak nullable kecuali jika memang diperlukan
  */

  // MEMBUAT LIST KOSONG UNTUK MENAMPUNG INPUT USER
  List<String> listHobi = [];
  String? inputHobi;
  int index = 1;

  // PERBEDAAN print() dan stdout.write
  // print() AKAN MENAMBAHKAN BARIS BARU SETELAH OUTPUT
  // stdout.write() TIDAK MENAMBAHKAN BARIS BARU

  stdout.write("Masukan nama Anda\t: ");
  var inputName = stdin.readLineSync()?.trim() ?? "Tidak ada input";
  
  // ? DIGUNAKAN UNTUK MENGHINDARI NULL POINTER EXCEPTION
  // .trim() DIGUNAKAN UNTUK MENGHAPUS SPASI DI AWAL DAN AKHIR INPUT
  // ?? DIGUNAKAN UNTUK MEMBERIKAN NILAI DEFAULT -> "Tidak ada input"

  print("Masukan hobi Anda (ketik 'selesai' untuk berhenti) : ");
  do {
    stdout.write("Hobi ke-$index : ");
    inputHobi = stdin.readLineSync();

    // VALIDASI
    if (inputHobi != null && inputHobi.isNotEmpty && inputHobi.toLowerCase() != 'selesai') {
      listHobi.add(inputHobi);
      index++;
    }
  } while (inputHobi?.toLowerCase() != 'selesai');

  print("Nama Anda adalah : $inputName");
  if (listHobi.length > 1) {
    print("Anda memiliki hobi :");
    for (var i = 0; i < listHobi.length; i++) {
      print("Hobi ke-${i + 1} : ${listHobi[i]}"); 
    }
  } else if (listHobi.isEmpty) {
    print("Anda tidak memiliki hobi.");
  } else {
    print("Anda memiliki hobi : ${listHobi[0]}");
  }

}
