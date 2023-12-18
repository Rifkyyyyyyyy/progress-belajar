// Studi Kasus: Sistem Manajemen Kendaraan
// Anda diminta untuk membuat program sederhana untuk sistem manajemen kendaraan.
// Kendaraan dapat berupa mobil atau sepeda motor. Setiap kendaraan memiliki beberapa atribut dan perilaku yang mirip, tetapi ada juga perbedaan antara mobil dan sepeda motor.

// Keterangan Kendaraan:
// Mobil:

// Atribut: Merek, Tahun Produksi, Warna, Jumlah Pintu.
// Perilaku: Start, Stop, Klakson.

// Sepeda Motor:

// Atribut: Merek, Tahun Produksi, Warna, Jumlah Roda.
// Perilaku: Start, Stop, Bunyikan Klakson (jika ada).
// Tugas Anda:
// Buatlah kelas dasar Kendaraan yang memiliki atribut umum (Merek, Tahun Produksi, Warna) dan perilaku umum (Start, Stop).
// Turunkan kelas Mobil dari kelas Kendaraan dengan menambahkan atribut dan perilaku yang khusus untuk mobil.
// Turunkan kelas SepedaMotor dari kelas Kendaraan dengan menambahkan atribut dan perilaku yang khusus untuk sepeda motor.
// Implementasikan program utama yang membuat objek dari kelas Mobil dan SepedaMotor, lalu panggil beberapa metode untuk menunjukkan pewarisan dan perilaku kelas tersebut.

// void main() {
//   var a = <Mobil>[];
//   var namaMobil = ['bmw', 'mercedes', 'supra'];
//   var tahun = [2020, 2023, 2024];
//   var warna = ['putih', 'silver', 'merah'];

//   for (var i = 0; i < namaMobil.length; i++) {
//     var y = Mobil(namaMobil[i], tahun[i], warna[i],
//         engine: i == 2 ? false : true, klakson: i == 2 ? false : true);
//     y.start();
//     y.stop();
//   }

//   for (var i in a) {
//     print(i);
//   }
//   ;
// }

abstract class Kendaraan {
  String merek;
  int tahunProduksi;
  String warna;

  Kendaraan(this.merek, this.tahunProduksi, this.warna);
  void stop();
  void start();
}

class Mobil extends Kendaraan {
  bool engine;
  bool klakson;
  Mobil(String merek, int tahunProduksi, String warna,
      {required this.engine, required this.klakson})
      : super(merek, tahunProduksi, warna);

  @override
  void start() {
    if (engine && klakson) {
      print('Merek : $merek , Tahun : $tahunProduksi , Warna : $warna');
      print('Mobil : $merek  , Status berjalan : $engine');
    } else {
      print('Mobil : $merek  , Status berjalan : $engine');
      print('eror... mesin belum di nyalakan');
    }
  }

  @override
  void stop() {
    if (!engine) {
      print('mesin berhenti');
    }
  }
}

void main() {
  Dua dua = Dua();
  var nama = ['rifky', 'ririn'];
  dua.s(nama);
}

abstract class Satu {
  void s(List<String> nama);
}

class Dua extends Satu {
  @override
  void s(List<String> nama) {
    for (var i = 0; i < nama.length; i++) {
      print('Hello ${nama[i]}');
    }
  }
}

