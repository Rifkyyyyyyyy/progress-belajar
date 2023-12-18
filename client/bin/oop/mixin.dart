// class Kucing {
//   void kucing() => print('meoww');
// }

// mixin Warna {
//   void warna () => print('oyenn');
// }

// mixin Galak {

// }

// class Oyen extends Kucing with Warna , Galak {
//   @override
//   void warna() {
//     // TODO: implement warna
//     super.warna();
//   }
// }

// void main(List<String> args) {

// }

// abstract mixin class Satu {
//   void nama(String name);
// }

// class Dua with Satu {
//   @override
//   void nama(String name) {
//     if (name.isNotEmpty && name.trim().isNotEmpty) {
//       print('hello $name');
//     } else {
//       print('mantap');
//     }
//   }
// }

// void main(List<String> args) {
//   Dua dua = Dua();
//   dua.nama(' ');
// }

// class Makanan {
//   String makanan = 'nyam nyam';
// }

// abstract mixin class Orang {
//   String enak(String p) {
//     return p;
//   }
// }

// mixin Hewan {
//   String enak2(String p) {
//     return p;
//   }
// }

// class Penampung extends Makanan with Orang, Hewan {
//   @override
//   String enak(String p) {
//     // TODO: implement enak
//     return super.enak(p);
//   }

//   @override
//   String enak2(String p) {
//     // TODO: implement enak2
//     for (var i = 0; i < p.length; i++) {
//       print(p[i]);
//     }
//     return super.enak2(p);
//   }
// }

// void main(List<String> args) {
//   Penampung penampung = Penampung();
//   var s = penampung.enak2('orang ');
//   print(s + penampung.makanan);
// }

// Mixin class
mixin Keluarga {
  bool? kepalaKeluarga;
  int? umur;
  String? status;
}

// Abstract class
abstract class KepalaKeluarga {
  bool check(bool y);
}

class AnggotaKeluarga with Keluarga implements KepalaKeluarga {
  // Constructor
  AnggotaKeluarga({bool? kepalaKeluarga, int? umur, String? status}) {
    this.kepalaKeluarga = kepalaKeluarga;
    this.umur = umur;
    this.status = status;
  }

  @override
  bool check(bool y) {
    return kepalaKeluarga == y;
  }
}

void main() {
  var anggota =
      AnggotaKeluarga(kepalaKeluarga: true, umur: 30, status: "Married");
  print("Umur: ${anggota.umur}, Status: ${anggota.status}");

  bool isHead = anggota.check(true);
  print("Is Head of the Family: $isHead");
}
