import 'dart:io';

void main() {
  // MEMANGGIL FUNGSI UNTUK MENDAPATKAN DATA DARI PENGGUNA
  final Map<String, dynamic> biodata = getBiodataFromUser();

  // MEMANGGIL FUNGSI UNTUK MENCETAK BIODATA
  printBiodata(biodata);
}


// FUNGSI UNTUK MENGUMPULKAN DATA PENGGUNA DENGAN RETURN TIPE MAP
// Map<String, dynamic> DIGUNAKAN UNTUK MENYIMPAN DATA DENGAN KUNCI STRING DAN TIPE NILAINYA DINAMIS
// STRUKTUR MAP Map<TipeKunci, TipeNilai>
Map<String, dynamic> getBiodataFromUser() {
  stdout.write('Masukkan Nama Anda: ');
  String nama = stdin.readLineSync()?.trim() ?? 'Pengguna Anonim';

  stdout.write('Masukkan Usia Anda: ');
  String inputUsia = stdin.readLineSync()?.trim() ?? '0';

  // MENGUBAH INPUT STRING MENJADI INTEGER. JIKA GAGAL, DEFAULTNYA 0
  int usia = int.tryParse(inputUsia) ?? 0;

  // DEKLARASI LIST KOSONG UNTUK MENAMPUNG HOBI
  List<String> daftarHobi = [];
  String? hobi;
  print('\nMasukkan Hobi Anda (ketik "selesai" untuk mengakhiri):');
  
  // LOOPING DO WHILE
  do {
    stdout.write('Hobi: ');
    hobi = stdin.readLineSync()?.trim();
        
    if (hobi != null && hobi.toLowerCase() != 'selesai' && hobi.isNotEmpty) {
      daftarHobi.add(hobi);
    }
  } while (hobi != null && hobi.toLowerCase() != 'selesai');

  // MENGEMBALIKAN DATA YANG SUDAH DIKUMPULKAN DALAM BENTUK MAP DENGAN TIPE NILAI DINAMIS
  return {
    'nama': nama,
    'usia': usia,
    'hobi': daftarHobi,
  };
}

// FUNGSI UNTUK MENCETAK BIODATA
void printBiodata(Map<String, dynamic> data) {
  print('\n=== BIODATA DIRI ===');
  
  // MENGAMBIL DATA DARI MAP DAN MENCETAKNYA
  // MENGGUNAKAN OPERATOR '??' UNTUK MENANGANI KASUS NULL
  String nama = data['nama'] ?? 'Tidak diketahui';
  int usia = data['usia'] ?? 'Tidak diketahui';
  
  print('Nama: $nama');
  print('Usia: $usia tahun');

  // FOR-LOOP
  print('Daftar Hobi:');
  List<String> hobi = data['hobi'] as List<String>? ?? [];
  if (hobi.isEmpty) {
    print('- Tidak ada hobi yang dimasukkan.');
  } else {
    for (var itemHobi in hobi) {
      print('- $itemHobi');
    }
  }
}