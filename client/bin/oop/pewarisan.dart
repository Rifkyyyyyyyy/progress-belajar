// Memahami sebuah class, di mana sebuah induk dapat mewariskan objek ke anak-anaknya

void main() {
  var y = Anak();
  print('Nilai title: ${y.title}');
  print('Nilai num: ${y.num}');
}

// Kelas Induk dengan atribut title dan num
class Induk {
  String? title;
  int? num;

  // Konstruktor dengan parameter opsional
  Induk({this.title, this.num});
}

// Kelas Anak mewarisi dari Kelas Induk
class Anak extends Induk {
  // Konstruktor Anak yang memanggil konstruktor Kelas Induk dengan nilai default
  Anak() : super(num: 10, title: 'mantap');
}

// Kelas Pertama dengan atribut name dan ofEmeng
class Pertama {
  String name = 'King emeng';
  List<String> ofEmeng = [];
}

// Kelas Kedua mewarisi dari Kelas Pertama
class Kedua extends Pertama {
  // Metode rajaNgeong untuk menambahkan nilai ke dalam ofEmeng
  void rajaNgeong(List<String> emeng) {
    for (var i = 0; i < emeng.length; i++) {
      ofEmeng.add(emeng[i]);
      print('Hello ${ofEmeng[i]}');
    }
  }

  // Metode king untuk mencetak nilai dari atribut name
  void king() {
    print('Hello $name');
  }
}

// void main() {
//   List<String> nama = [
//     'kucing oyen',
//     'kucing gayong',
//     'bapak kucing',
//     'emak kucing'
//   ];
//   var a = Kedua();
//   a.king();
//   a.rajaNgeong(nama);
// }

// Main function untuk menguji kelas Mantap dan Keren
// void main() {
//   var a = Keren();
//   a.greeting();
//   a.greeting2();
// }

// Kelas Mantap dengan atribut name dan age, serta metode greeting
class Mantap {
  String name = 'rifky';
  int age = 18;

  // Metode greeting untuk mencetak pesan salam
  void greeting() {
    print('Hello $name, age: $age');
  }
}

// Kelas Keren mewarisi dari Kelas Mantap
class Keren extends Mantap {
  // Metode greeting2 yang mengubah nilai atribut name dan mencetak pesan salam
  void greeting2() {
    name = 'kupli';
    print('Hello $name');
  }
}
