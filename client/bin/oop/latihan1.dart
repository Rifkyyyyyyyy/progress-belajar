// latihan studi kasus pengunaan class

// 1 ) Buatlah sebuah class bernama Person yang memiliki dua properti: name dan age. Kemudian buat objek person1 dan inisialisasi properti-properti tersebut.

// void main() {
//   String name = 'kucing';
//   int age = 19;
//   var person1 = Person(name: name, age: age);
//   person1.a();
// }

// class Person {
//   String? name;
//   int? age;

//   Person({this.name, this.age});

//   void a() {
//     print('hello i $name & i $age years old');
//   }
// }

// 2 ) Buatlah sebuah class bernama Rectangle yang memiliki properti width dan height. Tambahkan method calculateArea yang mengembalikan luas dari persegi panjang.

// void main() {
//   var u = Rectangle();
//   u.calculateArea();
// }

// class Rectangle {
//   double width = 18.0;
//   double height = 18.0;

//   double calculateArea() {
//     var y = width * height;
//     print(y);
//     return y;
//   }
// }

// 3 ) Buatlah class Student dengan properti name, studentID, dan major. Kemudian buat dua objek student1 dan student2, dan tampilkan informasi masing-masing mahasiswa.

// void main() {
//   String name = 'kuproy';
//   double id = 1292122.000;
//   String name2 = 'samsul';
//   double id2 = 129292.000;
//   var y = Student();
//   y.student1(name, id);
//   y.student2(name2, id2);
// }

// class Student {
//   String? name;
//   double? studenId;

//   void student1(String n, double i) {
//     name = n;
//     studenId = i;
//     print('data : name $n , id : $i');
//   }

//   void student2(String n, double i) {
//     name = n;
//     studenId = i;
//     print('data : name $n , id : $i');
//   }
// }

// 4 )Buatlah class Product dengan properti name, price, dan quantity. Tambahkan method calculateTotalPrice yang mengembalikan total harga produk berdasarkan harga dan jumlahnya.

// import 'dart:math';

// void main() async {
//   List<String> a = ['tas', 'jam', 'baju', 'gelang', 'hoodie'];
//   List<double> u = [20000.0, 39999.0, 90029.0, 40000.0, 29099.0];
//   List<int> o = [1, 2, 4, 10, 9];
//   List<int> p = [0, 1, 2, 8, 7];

//   for (int i = 0; i < a.length; i++) {
//     var b = Product(name: a[i].trim(), price: u[i], quantity: o[i]);
//     b.addProduct();
//     int idn = p[i];
//     int randomValue = int.parse(await b.random(idn));
//     int d = await b.decrement(randomValue);
//     double totalPrice = b.calculateTotalPrice();

//     print('Total harga : ${b.name}: $totalPrice\nsetelah dikurangi : $d\n');
//     print('User yang mengubah jumlah : ${p[i]}\n');
//   }
// }

// class Product {
//   String name;
//   double price;
//   int quantity;
//   int id = 0;
//   List<Map<String, dynamic>> product = [];
//   Product({required this.name, required this.price, required this.quantity});

//   void addProduct() {
//     id++;
//     product
//         .add({'id': id, 'product': name, 'harga': price, 'jumlah': quantity});
//     print('id: $id, product: $name, harga: $price, jumlah: $quantity');
//   }

//   double calculateTotalPrice() {
//     return price * quantity;
//   }

//   Future<int> decrement(int num) async {
//     if (quantity > 1) {
//       await Future.delayed(Duration(seconds: 2));
//       return quantity - num;
//     } else {
//       return num;
//     }
//   }

//   Future<String> random(int idn) async {
//     Random random = Random();
//     print('mengambil data...');
//     await Future.delayed(Duration(seconds: 2));
//     int randomValue = random.nextInt(2) * product.length;
//     return randomValue.toString();
//   }
// }

//  5) Buatlah class Circle dengan properti radius. Tambahkan method calculateArea dan calculateCircumference yang mengembalikan luas dan keliling lingkaran.

// void main() {
//   double nilai = 8.00;
//   var b = Circle(radius: nilai);
//   print('ruas lingkaran : ${b.calculateArea()}');
//   print('keliling lingkaran : ${b.calculateCircumference()}');
// }

// class Circle {
//   double? radius;

//   Circle({this.radius});

//   double calculateArea() {
//     if (radius != null) {
//       return 3.14 * radius! * radius!;
//     } else {
//       return 0.0;
//     }
//   }

//   double calculateCircumference() {
//     if (radius != null) {
//       return 2 * 3.14 * radius!;
//     } else {
//       return 0.0;
//     }
//   }
// }

// Buatlah class Book dengan properti title, author, dan publishedYear. Tambahkan method getBookInfo yang mengembalikan
//informasi buku dalam format "Judul: [title], Penulis: [author], Tahun Terbit: [publishedYear]".

// void main() {
//   List<String> p = ['rifky', 'kupli', 'mantul', 'udin'];
//   List<String> j = [
//     'ada bulan dimata kaki',
//     'nak makan es krim',
//     'ada hati yang sakit',
//     'bocah ngidam aerox'
//   ];
//   List<int> o = [2020, 2008, 2007, 2077];

//   List<Book> books = [];

//   for (var i = 0; i < p.length; i++) {
//     var book = Book(index: i, author: p[i], title: j[i], publishYear: o[i]);
//     books.add(book);
//   }

//   for (var book in books) {
//     print('${book.getBookInfo()}');
//   }
// }

// class Book {
//   String? author;
//   String? title;
//   int? publishYear;
//   int? index;

//   Book({this.author, this.title, this.publishYear, this.index});

//   Map<String, dynamic> getBookInfo() {
//     return {
//       'index': index,
//       'judul': title,
//       'penulis': author,
//       'tahun terbit': publishYear.toString(),
//     };
//   }
// }

// Buatlah class Car dengan properti brand, model, dan year. Tambahkan method startEngine yang mencetak pesan "Mobil [brand] [model] [year] telah dinyalakan."

import 'dart:math';

void main() {
  List<String> brand = [
    'toyota',
    'alphard',
    'supra',
    'mio',
    'satria Fu',
    'suzuki',
    'lamborghini',
    'ducati',
    'ferrari'
    ''
  ];
    List<String> model = [
    'Toyota rush',
    'A25A-FXS',
    'supra bapak',
    'mio penguras kantong',
    'satria Fu motor idaman cewe-cewe',
    'suzuki ertiga',
    'lamborghini tiga ribu',
    'ducati leo',
    'ferrari seri tiga'
    ''
  ];

  List<Car> u = [];
  for (var i = 0; i < brand.length; i++) {
    var g = Car(brand: brand[i] , model: model[i] );
    g.randomizeEngineStatus(); 
    u.add(g);
  }
  for (var car in u) {
    print('${car.startEngine()}');
  }
}

class Car {
  String? brand;
  String? model;
  int? year;
  bool? isTrue;
  bool y = true;
  Car({this.brand, this.model, this.year}) {
    randomizeEngineStatus();
  }

  final Random random = Random();

  void randomizeEngineStatus() {
    isTrue = random.nextBool();
  }

  Map<String, dynamic> startEngine() {
    if (brand != '' && model != '') {
      return {
        'brand': brand,
        'model': model,
        'year': year,
        'Engine Active': isTrue
      };
    } else {
      return {
        'brand': null,
        'model': null,
        'year': null,
        'Engine Active': false
      };
    }
  }
}


// Buatlah class Person dengan properti name, age, dan address. Tambahkan method introduceYourself yang mencetak pesan "Halo, nama saya [name], saya berusia [age] tahun, dan saya tinggal di [address]."

// Buatlah class BankAccount dengan properti accountNumber, accountHolder, dan balance. Tambahkan method deposit dan withdraw untuk mengelola saldo rekening.

// Buatlah class Dog dengan properti name dan breed. Tambahkan method bark yang mencetak pesan "Guk guk! Saya adalah anjing [breed] bernama [name]."
