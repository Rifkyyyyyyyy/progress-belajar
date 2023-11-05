// latihan studi kasus pengenalan pengunaan class(dasar)
import 'dart:math';
// 1 ) Buatlah sebuah class bernama Person yang memiliki dua properti: name dan age. Kemudian buat objek person1 dan inisialisasi properti-properti tersebut.

// void main() {
//   String name = 'kucing';
//   int age = 19;
//   var person1 = Person(name: name, age: age);
//   person1.a();
// }

class Person {
  String? name;
  int? age;

  Person({this.name, this.age});

  void a() {
    print('hello i $name & i $age years old');
  }
}

// 2 ) Buatlah sebuah class bernama Rectangle yang memiliki properti width dan height. Tambahkan method calculateArea yang mengembalikan luas dari persegi panjang.

// void main() {
//   var u = Rectangle();
//   u.calculateArea();
// }

class Rectangle {
  double width = 18.0;
  double height = 18.0;

  double calculateArea() {
    var y = width * height;
    print(y);
    return y;
  }
}

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

class Student {
  String? name;
  double? studenId;

  void student1(String n, double i) {
    name = n;
    studenId = i;
    print('data : name $n , id : $i');
  }

  void student2(String n, double i) {
    name = n;
    studenId = i;
    print('data : name $n , id : $i');
  }
}

// 4 )Buatlah class Product dengan properti name, price, dan quantity. Tambahkan method calculateTotalPrice yang mengembalikan total harga produk berdasarkan harga dan jumlahnya.


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

class Product {
  String name;
  double price;
  int quantity;
  int id = 0;
  List<Map<String, dynamic>> product = [];
  Product({required this.name, required this.price, required this.quantity});

  void addProduct() {
    id++;
    product
        .add({'id': id, 'product': name, 'harga': price, 'jumlah': quantity});
    print('id: $id, product: $name, harga: $price, jumlah: $quantity');
  }

  double calculateTotalPrice() {
    return price * quantity;
  }

  Future<int> decrement(int num) async {
    if (quantity > 1) {
      await Future.delayed(Duration(seconds: 2));
      return quantity - num;
    } else {
      return num;
    }
  }

  Future<String> random(int idn) async {
    Random random = Random();
    print('mengambil data...');
    await Future.delayed(Duration(seconds: 2));
    int randomValue = random.nextInt(2) * product.length;
    return randomValue.toString();
  }
}

//  5) Buatlah class Circle dengan properti radius. Tambahkan method calculateArea dan calculateCircumference yang mengembalikan luas dan keliling lingkaran.

// void main() {
//   double nilai = 8.00;
//   var b = Circle(radius: nilai);
//   print('ruas lingkaran : ${b.calculateArea()}');
//   print('keliling lingkaran : ${b.calculateCircumference()}');
// }

class Circle {
  double? radius;

  Circle({this.radius});

  double calculateArea() {
    if (radius != null) {
      return 3.14 * radius! * radius!;
    } else {
      return 0.0;
    }
  }

  double calculateCircumference() {
    if (radius != null) {
      return 2 * 3.14 * radius!;
    } else {
      return 0.0;
    }
  }
}

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

class Book {
  String? author;
  String? title;
  int? publishYear;
  int? index;

  Book({this.author, this.title, this.publishYear, this.index});

  Map<String, dynamic> getBookInfo() {
    return {
      'index': index,
      'judul': title,
      'penulis': author,
      'tahun terbit': publishYear.toString(),
    };
  }
}

// Buatlah class Car dengan properti brand, model, dan year. Tambahkan method startEngine yang mencetak pesan "Mobil [brand] [model] [year] telah dinyalakan."



// void main() {
//   List<String> brand = [
//     'toyota',
//     'alphard',
//     'supra',
//     'mio',
//     'satria Fu',
//     'suzuki',
//     'lamborghini',
//     'ducati',
//     'ferrari'
//         ''
//   ];
//   List<String> model = [
//     'Toyota rush',
//     'A25A-FXS',
//     'supra bapak',
//     'mio penguras kantong',
//     'satria Fu motor idaman cewe-cewe',
//     'suzuki ertiga',
//     'lamborghini tiga ribu',
//     'ducati leo',
//     'ferrari seri tiga'
//         ''
//   ];

//   List<Car> u = [];
//   for (var i = 0; i < brand.length; i++) {
//     var g = Car(brand: brand[i], model: model[i]);
//     g.randomizeEngineStatus();
//     u.add(g);
//   }
//   for (var car in u) {
//     print('${car.startEngine()}');
//   }
// }

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

  void randomYear() {
    year = random.nextInt(0);
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

// Buatlah class Person dengan properti name, age, dan address. Tambahkan method introduceYourself yang mencetak pesan
//"Halo, nama saya [name], saya berusia [age] tahun, dan saya tinggal di [address]."

// void main() {
//   List<Map<String, dynamic>> personData = [
//     {'nama': 'udin', 'umur': 20, 'andress': 'jalan maju merdeka'},
//     {'nama': 'samsul', 'umur': 22, 'andress': 'jalan maju mundur'},
//     {'nama': 'kipli', 'umur': 18, 'andress': 'jalan maju belakang'}
//   ];

//   var people = <Person>[];

//   for (var data in personData) {
//     var person = Person(
//       name: data['nama'],
//       age: data['umur'],
//       andress: data['andress'],
//     );
//     people.add(person);
//   }

//   for (var person in people) {
//     print(person.introduceYourself());
//   }
// }

class Person2 {
  String? name;
  int? age;
  String? andress;

  Person2({this.name, this.age, this.andress});

  Map<String, dynamic> introduceYourself() {
    return {
      'nama saya': name,
      'umur saya': age,
      'saya tinggal di': andress,
    };
  }
}

// Buatlah class BankAccount dengan properti accountNumber, accountHolder, dan balance. Tambahkan method deposit dan withdraw untuk mengelola saldo rekening.

// void main() {
//   List<Map<String, dynamic>> user = [
//     {'user': 'jhonny', 'id': 20010120002},
//     {'user': 'samsul', 'id': 2001012029},
//     {'user': 'meng oyen', 'id': 20010120802}
//   ];

//   var a = <BankAccount>[];
//   for (var i in user) {
//     var data = BankAccount(accountHolder: i['user'], accountNumber: i['id']);
//     a.add(data);
//   }

//   List<double> saldo = [89999, 180102, 10092];

//   for (var i = 0; i < a.length; i++) {
//     a[i].deposit(saldo[i]);
//     a[i].withdraw(3000);
//   }

//   for (var j in a) {
//     print('\nSaldo akun milik ${j.accountHolder}: ${j.balance}');
//   }
// }

class BankAccount {
  int? accountNumber;
  double balance = 0;
  String? accountHolder;

  BankAccount({this.accountHolder, this.accountNumber});

  void deposit(double amount) {
    if (amount >= 0) {
      balance += amount;
      print(
          'user : ($accountHolder) , id : ($accountNumber) , deposit: ($amount). Total saldo : $balance');
    } else {
      print('Deposit gagal!');
    }
  }

  void withdraw(double amount) {
    if (amount >= 0 && balance >= amount) {
      balance -= amount;
      print('Jumlah penarikan: $amount. Total saldo: $balance');
    } else {
      print('Penarikan gagal!');
    }
  }
}

// Buatlah class Dog dengan properti name dan breed. Tambahkan method bark yang mencetak pesan "Guk guk! Saya adalah anjing [breed] bernama [name]."

// void main() {
//   List<Map<String, dynamic>> all = [
//     {'bread': 'buldog', 'name': 'valdes'},
//     {'bread': 'doge', 'name': 'botak'},
//     {'bread': 'dogo', 'name': 'sambo'}
//   ];

//   var a = <Dog>[];

//   for (var y in all) {
//     var u = Dog(name: y['name'], bread: y['bread']);
//     a.add(u);
//   }

//   for (var i in a) {
//     i.bark();
//   }
// }

class Dog {
  String? name;
  String? bread;
  Dog({this.name, this.bread});

  void bark() {
    if (name != null && bread != null) {
      print('Guk guk! Saya adalah anjing $bread bernama $name');
    } else {
      print('woof woof , saya adalah anjing jalanan');
    }
  }
}


// tamat !