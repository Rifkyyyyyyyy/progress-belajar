// 1 . Studi Kasus: Karyawan
// Definisikan class Karyawan dengan atribut seperti nama, id, dan gaji. Buat subclass Manajer
// yang mewarisi class Karyawan dan menambahkan atribut atau method yang khusus untuk manajer.

void main() {
  List<String> namaKaryawan = ['rifky', 'kupli', 'tono', 'samsul', 'joko'];
  var idCard = [1120003, 1222011, 1122333, 1211123, 11322234];
  var posisiKaryawan = ['hrd', 'supervisor', 'admin', 'ob', 'operator'];
  var jumlahIzin = [0, 5, 7, 40, 9];
  var status = [
    'Karyawan tetap',
    'Karyawan kontrak',
    'Magang',
    'Magang',
    'Karyawan tetap'
  ];

  for (var i = 0; i < namaKaryawan.length; i++) {
    Karyawan karyawan = Karyawan(
      name: namaKaryawan[i],
      id: idCard[i].toDouble(),
      posisi: posisiKaryawan[i],
      status: status[i],
      jumlahBolos: jumlahIzin[i],
    );

    var manajer = Manajer(
      name: karyawan.name,
      status: karyawan.status,
      id: karyawan.id,
      jumlahBolos: karyawan.jumlahBolos,
      posisi: karyawan.posisi,
    );

    manajer.cekMasuk();
  }
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
  String? status;
  Karyawan({
    this.name,
    this.status,
    this.gaji,
    this.id,
    this.jumlahBolos,
    this.posisi,
    this.index,
  });
}

class Manajer extends Karyawan {
  List<double> gajiKaryawanSesuaiPosisi = [
    3200500.00,
    4200500.00,
    2210050.00,
    13200500.00,
    121500.00,
  ];
  List<String> jabatan = [
    'supervisor',
    'admin',
    'hrd',
    'operator',
    'ob',
    'staff',
    'asistent',
    'manager',
    'quality control'
  ];
  double penguranganGajiPerhari = 1500.00;
  double tunjangan = 1500.00;
  double biayaMakan = 1500.00;
  double bpjs = 1600.00;
  var bonus = 10400.0;
  var masuk = 0;

  Manajer({
    String? name,
    String? status,
    double? gaji,
    double? id,
    int? jumlahBolos,
    String? posisi,
    int? index,
  }) : super(
          name: name,
          status: status,
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
    var terbatas = jumlahBolos! <= 0 ? 0 : jumlahMinMasuk - jumlahBolos!;
    // var terlewat = terbatas 
    var jumlahMasuk = jumlahMinMasuk - (jumlahBolos ?? 0);
    var max = jumlahMasuk <= 0 ? 0 : jumlahMasuk;
    print('Rincian Kehadiran :');
    print('$name masuk selama $max hari dan izin selama $terbatas hari\n');
    var posisiIndex = jabatan.indexOf(posisi ?? "");
    var gajiPokok = gajiKaryawanSesuaiPosisi[posisiIndex].toInt();
    var makan = biayaMakan *
        ((jumlahMinMasuk - jumlahBolos!) > 0
            ? (jumlahMinMasuk - jumlahBolos!)
            : 0);
    var potongan = tunjangan + makan + bpjs;
    var potonganCuti = penguranganGajiPerhari * jumlahBolos!;
    var dataPotongan = potongan + potonganCuti;
    var gajiAkhir = gajiPokok - (potongan + potonganCuti);

    var max2 = jumlahMasuk <= 0 ? 0.0 : gajiAkhir;

    if (jumlahBolos! >= 30) {
      print('Maaf kamu tidak dapat gaji bulan ini');
    } else {
      print('Rincian Gaji untuk posisi $posisi:');
      print('Gaji Pokok : Rp.$gajiPokok');
      print('---------------------------');
      print('Potongan    : -$dataPotongan');
      print('Rincian Potongan :');
      print('  Tunjangan   : Rp.$tunjangan');
      print('  Biaya Makan : Rp.$makan');
      print('  BPJS        : Rp.$bpjs');

      if (jumlahBolos! > jumlahMinIzin) {
        print('  Potongan Perhari : $penguranganGajiPerhari x $jumlahBolos');
        print('  Total Potongan Cuti : -Rp.$potonganCuti');
      } else {
        print('Bonus       : + Rp.$bonus');
      }
    }

    print('---------------------------');
    print('Total Gaji Akhir  :Rp.${max2.toInt()}\n');
  }

  void cekMasuk() {
    var jumlahMasuk = jumlahMinMasuk - (jumlahBolos ?? 0);
    if (jumlahBolos! > jumlahMinIzin && jumlahMasuk >= 2) {
      print('Index : $index');
      print('Data Karyawan PT Maju Kebelakang');
      print('--------------------------');
      print('Nama : $name');
      print('ID : ${id!.toInt()}');
      print('Posisi : $posisi');
      print('Status Karyawan : $status');

      print('--------------------------');
      print('jumlah wajib bekerja : $jumlahMinMasuk');
      print('jumlah diwajarkan izin : $jumlahMinIzin');
      menghitungGajiAkhir();
    } else {
      print('Index : $index');
      print('Data Karyawan PT Maju Kebelakang');
      print('--------------------------');
      print('Nama : $name');
      print('ID : ${id!.toInt()}');
      print('Posisi : $posisi');
      print('Status : $status');
      print('--------------------------');
      print('jumlah wajib bekerja : $jumlahMinMasuk');
      print('jumlah diwajarkan izin : $jumlahMinIzin');
      menghitungGajiAkhir();
    }
  }
}

// 2. Studi Kasus: Binatang
// Buat class dasar Binatang dan beberapa subclass seperti Mamalia, Reptil, dan Burung.
//Setiap subclass harus memiliki karakteristik unik, dan class dasar harus berisi sifat-sifat umum dari binatang.



abstract class Binatang {
  String? makanan;
  String? alam;
  int? jumlahKaki;
  String? namaHewan;
  String? jenisHewan;
  int? id;


  List<Map<String, dynamic>> dataHewan();
  

  Binatang({
    this.id,
    this.makanan,
    this.jenisHewan,
  });
}

class Mamalia extends Binatang {
  String? jenisBulu;


  Mamalia({
    int? id,
    String? makanan,
    String? jenisHewan,
    this.jenisBulu,
  }) : super(id: id, makanan: makanan, jenisHewan: jenisHewan);

  @override
  List<Map<String, dynamic>> dataHewan() {
    return [
      {
        'Id': id,
        'Jenis hewan': jenisHewan,
        'Nama hewan': namaHewan,
        'Hidup di alam': alam,
        'Jumlah kaki': jumlahKaki,
        'Makanan': makanan,
        'Jenis bulu': jenisBulu,
      }
    ];
  }
}

class Reptil extends Binatang {
  bool? bersisik;


  Reptil({
    int? id,
    String? makanan,
    String? jenisHewan,
    this.bersisik,
  }) : super(id: id, makanan: makanan, jenisHewan: jenisHewan);

  @override
  List<Map<String, dynamic>> dataHewan() {
    return [
      {
        'Id': id,
        'Jenis hewan': jenisHewan,
        'Nama hewan': namaHewan,
        'Hidup di alam': alam,
        'Jumlah kaki': jumlahKaki,
        'Makanan': makanan,
        'Bersisik': bersisik,
      }
    ];
  }
}

class Burung extends Binatang {
  bool? terbang;


  Burung({
    int? id,
    String? makanan,
    String? jenisHewan,
    this.terbang,
  }) : super(id: id, makanan: makanan, jenisHewan: jenisHewan);

  @override
  List<Map<String, dynamic>> dataHewan() {
    return [
      {
        'Id': id,
        'Jenis hewan': jenisHewan,
        'Nama hewan': namaHewan,
        'Hidup di alam': alam,
        'Jumlah kaki': jumlahKaki,
        'Makanan': makanan,
        'Bisa terbang': terbang,
      }
    ];
  }
}

// 3.  Studi Kasus: Perangkat Elektronik
// Buat class PerangkatElektronik dengan atribut seperti merek, model, dan tahun produksi.
//Buat subclass seperti TeleponPintar dan Laptop yang mewarisi sifat-sifat dasar dari PerangkatElektronik dan menambahkan atribut atau method yang sesuai.
