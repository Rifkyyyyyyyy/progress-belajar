// void main() {
//   var b = Person();
//   print(b.name);
//   b.name = 'rifky';
//   print(b.name);\
//   final name = 'rifky';
//   var c = Person2();
//   c.endpoint(name, name);
//   String ea = 'r';
//   c.c(name, ea);
// }

// class Person {
//   String name = 'guest';
//   String? andress;
//   final nameAll = 'name';
// }

// // method / membuat sebuah fungsi dalam class

// class Person2 {
//   void a(String name) {
//     print('how are you $name ?');
//   }

//   void b(String n, var x) {
//     print('hello  $n');
//     a(x);
//   }

//   String c(String ny, var u) {
//     if (ny.contains(u)) {
//       print('yes');
//     } else {
//       print('no');
//     }
//     return u;
//   }

//   void endpoint(String n, var x) {
//     b(n, x);
//   }
// }

// method ekxpresion body

// void main() {
//   String kegiatan = 'nonton';
//   String kegiatan2 = 'maen bola';
//   var o = Abc();
//   o.kuy(kegiatan);
//   o.gas(kegiatan2);
// }

// class Abc {
// // contoh dari method instance body / sama halnya dengan anon function , digunakan untuk membuat method sederhana

//   void kuy(String kegiatan) => print('aku suka $kegiatan');

// // contoh dari method pada dasarnya,untuk kasus yang lebih kompleks.

//   void gas(String kegiatan2) {
//     print('aku suka $kegiatan2');
//   }

// // kesimpulannya , perbedaan antara 2 method tersebut terletak pada pengunaan arrow funtion(=>) dan pengunaan kurawa({})  dalam pengindentifikasinya.

// }

// void main() {
//   final lanjutan = Lanjutan();
//   lanjutan.endpoint();
// }

// class Lanjutan {
//   Future<void> computer(var user) async {
//     await Future.delayed(Duration(seconds: 5), () {
//       print('$user menyalakan komputer');
//     });
//   }

//   Future<void> loading() async {
//     await Future.delayed(Duration(seconds: 3), () {
//       print('loading....');
//     });
//   }

//   Future<void> proses(var user, var layar) async {
//     await Future.delayed(Duration(seconds: 2), () {
//       print('$user memulai proses menampilkan $layar');
//     });
//   }

//   Future<void> akhir() async {
//     await Future.delayed(Duration(seconds: 3), () => print('layar ditampilkan'))
//         .then((_) => end());
//   }

//   Future<void> end() async {
//     await Future.delayed(Duration(seconds: 3), () {
//       print('program telah selesai.');
//     });
//   }

//   void endpoint() async {
//     await computer('user');
//     await loading();
//     await proses('komputer', 'layar');
//     await akhir();
//   }
// }

// ektension method
// berfungsi untuk menambahkan suatu extension ke sebuah class

// void main() {
//   var n = Person();
//   n.greeting();
// }

// class Person {
//   String name = 'rifky';
//   int umur = 19;
// }

// extension Add on Person {
//   void greeting() {
//     print('Hello my name is $name , and i $umur years old');
//   }
// }

// operator didalam claass

// void main() {
//   var u = OperatorClass();
// }

// class OperatorClass {
//   int n = 0;
//   OperatorClass operator +(OperatorClass huh) {
//     var r = OperatorClass();
//     r.n = n + huh.n;
//     return r;
//   }
// }
