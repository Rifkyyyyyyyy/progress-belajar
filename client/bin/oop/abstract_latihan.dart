// Kasus: Perusahaan Transportasi
// Anda diminta untuk membuat struktur kelas untuk sistem manajemen perusahaan
// transportasi. Perusahaan ini memiliki beberapa jenis kendaraan, seperti mobil, bus, dan pesawat.
// Setiap jenis kendaraan memiliki atribut dan perilaku khusus.

// Buatlah sebuah abstract class bernama Kendaraan yang memiliki:

// Atribut nomorRegistrasi (string)
// Atribut jumlahPenumpang (integer)
// Sebuah abstract method bernama infoKendaraan yang akan memberikan informasi umum tentang kendaraan.
// Turunkan kelas-kelas konkret dari Kendaraan untuk setiap jenis kendaraan:

// Mobil dengan tambahan atribut jumlahPintu dan implementasi infoKendaraan yang mencakup informasi spesifik mobil.
// Bus dengan tambahan atribut kapasitasPenumpang dan implementasi infoKendaraan yang mencakup informasi spesifik bus.
// Pesawat dengan tambahan atribut maskapai dan implementasi infoKendaraan yang mencakup informasi spesifik pesawat.


abstract class Kendaraan {
  String nomorRegistrasi;
  int jumlahPenumpang;
  String namaKendaraan;

  Kendaraan(this.jumlahPenumpang, this.nomorRegistrasi, this.namaKendaraan);
  void infoKendaraan(); 
}

class Mobil extends Kendaraan {
  String namaTypeKendaraan;

  Mobil({
    required this.namaTypeKendaraan,
    required int jumlahPenumpang,
    required String nomorRegistrasi,
    required String namaKendaraan,
  }) : super(jumlahPenumpang, nomorRegistrasi, namaKendaraan);

  @override
  void infoKendaraan() {
    if (jumlahPenumpang == 4 || jumlahPenumpang <= 4) {
      print(
          "Mobil $namaTypeKendaraan dengan nomor registrasi $nomorRegistrasi memiliki $jumlahPenumpang penumpang.");
    } else if(jumlahPenumpang >= 5){
      print("Mobil $namaTypeKendaraan tidak dapat berangkat.kepenuhan woy");
    }
  }
}

class Bus extends Kendaraan {
  int kapasitasPenumpang;

  Bus({
    required this.kapasitasPenumpang,
    required int jumlahPenumpang,
    required String nomorRegistrasi,
    required String namaKendaraan,
  }) : super(jumlahPenumpang, nomorRegistrasi, namaKendaraan);

  @override
  void infoKendaraan() {
    print(
        "Bus dengan nomor registrasi $nomorRegistrasi memiliki kapasitas penumpang sebanyak $kapasitasPenumpang.");
  }
}

class Pesawat extends Kendaraan {
  String maskapai;

  Pesawat({
    required this.maskapai,
    required int jumlahPenumpang,
    required String nomorRegistrasi,
    required String namaKendaraan,
  }) : super(jumlahPenumpang, nomorRegistrasi, namaKendaraan);

  @override
  void infoKendaraan() {
    print("Pesawat $namaKendaraan dari maskapai $maskapai dengan nomor registrasi $nomorRegistrasi.");
  }
}


void main() {
 
  Mobil mobil1 = Mobil(
    namaTypeKendaraan: "Sedan",
    jumlahPenumpang: 5,
    nomorRegistrasi: "ABC123",
    namaKendaraan: "Mobil A",
  );

  mobil1.infoKendaraan();


  Bus bus1 = Bus(
    kapasitasPenumpang: 40,
    jumlahPenumpang: 30,
    nomorRegistrasi: "XYZ789",
    namaKendaraan: "Bus X",
  );


  bus1.infoKendaraan();

  // Membuat objek Pesawat
  Pesawat pesawat1 = Pesawat(
    maskapai: "Garuda Indonesia",
    jumlahPenumpang: 150,
    nomorRegistrasi: "PQR456",
    namaKendaraan: "Pesawat P",
  );


  pesawat1.infoKendaraan();
}
