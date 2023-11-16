// 1 . Studi Kasus: Karyawan
// Definisikan class Karyawan dengan atribut seperti nama, id, dan gaji. Buat subclass Manajer
// yang mewarisi class Karyawan dan menambahkan atribut atau method yang khusus untuk manajer.

void main() {
  // List<String> namaKaryawan = ['samsul', 'udin', 'johan', 'kupli', 'ucup'];
  // List<int> jumlahAlfa = [1, 0, 3, 5, 10];
  // List<String> posisiKaryawan = ['supervisor', 'admin', 'hrd', 'operator', 'ob'];
  // var karyawanList = <Karyawan>[];

  // for (var i = 0; i < namaKaryawan.length; i++) {
  //   var karyawan = Karyawan(
  //     name: namaKaryawan[i],
  //     id: i.toDouble(),
  //     jumlahBolos: jumlahAlfa[i],
  //     posisi: posisiKaryawan[i],
  //     index: i,
  //   );
  //   karyawanList.add(karyawan);
  // }

  // // Contoh penggunaan:
  // for (var karyawan in karyawanList) {
  //   print('Index: ${karyawan.index}, Nama: ${karyawan.name}, ID: ${karyawan.id}, Posisi: ${karyawan.posisi}');
  // }

  // var u = Manajer();
  // u.cekJabatan('hrd');
  // u.cekJumlahIzin(3);
  // u.cekJumlahBolos(4);
  // u.cekMasuk();
}

class Karyawan {
  int? index;
  String? name;
  double? id;
  double? gaji;
  int? jumlahBolos;
  int jumlahMinMasuk = 30;
  int jumlahMinIzin = 2;
  String? posisi;


  Karyawan({
    this.name,
    this.gaji,
    this.id,
    this.jumlahBolos,
    this.posisi,
    this.index,
  });
}

class Manajer extends Karyawan {
  List<double> gajiKaryawanSesuaiPosisi = [
    300500.00,
    400500.00,
    210050.00,
    1300500.00,
    11500.00,
  ];
  List<String> jabatan = ['supervisor', 'admin', 'hrd', 'operator', 'ob'];
  double penguranganGajiPerhari = 100500.00;
  double tunjangan = 1500.00;
  double biayaMakan = 1500.00;
  double bpjs = 1600.00;
  var bonus = 10500 * 2 % 10;

  var masuk = 0;

  Manajer({
    String? name,
    double? gaji,
    double? id,
    int? jumlahBolos,
    String? posisi,
    int? index,
  }) : super(
          name: name,
          gaji: gaji,
          id: id,
          jumlahBolos: jumlahBolos,
          posisi: posisi,
          index: index,
        );

  setJumlahIzin(int jumlahIzin) {
    jumlahMinIzin = jumlahIzin;
  }

  setJumlahBolos(int jumlahBolos) {
    this.jumlahBolos = jumlahBolos;
  }

  void menghitungGajiAkhir() {
    for (var i = 0; i < gajiKaryawanSesuaiPosisi.length; i++) {
      var gajiPokok = gajiKaryawanSesuaiPosisi[i];
      var potongan = tunjangan + biayaMakan + bpjs;
      var gajiAkhir = gajiPokok - potongan;

      if (jumlahMinIzin == 0 && jumlahMinMasuk == 30) {
        gajiAkhir += bonus;
        print('Rincian Gaji:');
        print('Gaji Pokok : $gajiPokok');
        print('Potongan    : -$potongan');
        print('Bonus       : +$bonus');
        print('Gaji Akhir  : $gajiAkhir');
      } else {
        print('$name Rincian Gaji:');
        print('Gaji Pokok : $gajiPokok');
        print('Potongan    : -$potongan');
        print('Gaji Akhir  : $gajiAkhir');
      }
    }
  }

  void cekMasuk() {
    if (jumlahBolos! > jumlahMinIzin && (jumlahMinMasuk - jumlahBolos!) >= 2) {
      masuk = jumlahMinMasuk - jumlahBolos!;
      print('jumlah wajib bekerja $jumlahMinMasuk');
      print('jumlah diwajarkan izin : $jumlahMinIzin');
      print(
          '$name masuk selama ${(jumlahMinMasuk - masuk)} hari dan izin selama $jumlahMinIzin hari');
      menghitungGajiAkhir();
    } else {
      for (var i = 0; i < gajiKaryawanSesuaiPosisi.length; i++) {
        var b = gajiKaryawanSesuaiPosisi[i] -
            (penguranganGajiPerhari * jumlahBolos!);
        print(
            '$name masuk selama ${(jumlahMinMasuk - masuk)} hari dan izin selama $jumlahMinIzin hari');
        print('total gaji kamu untuk posisi $i adalah : $b');
      }
    }
  }
}


// 2. Studi Kasus: Binatang
// Buat class dasar Binatang dan beberapa subclass seperti Mamalia, Reptil, dan Burung.
//Setiap subclass harus memiliki karakteristik unik, dan class dasar harus berisi sifat-sifat umum dari binatang.

// 3.  Studi Kasus: Perangkat Elektronik
// Buat class PerangkatElektronik dengan atribut seperti merek, model, dan tahun produksi.
//Buat subclass seperti TeleponPintar dan Laptop yang mewarisi sifat-sifat dasar dari PerangkatElektronik dan menambahkan atribut atau method yang sesuai.
