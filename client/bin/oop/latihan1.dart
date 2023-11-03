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
void main() async {
  List<String> a = ['tas', 'jam', 'baju', 'gelang', 'hoodie'];
  List<double> u = [20000.0, 39999.0, 90029.0, 40000.0, 29099.0];
  List<int> o = [1, 2, 4, 10, 9];
  List<int> p = [0, 1, 2, 8, 7];
  for (int i = 0; i < a.length; i++) {
    var b = Product(name: a[i].trim(), price: u[i], quantity: o[i]);
    b.addProduct();
    double totalPrice = b.calculateTotalPrice();
    int d = await b.decrement(p[i]);
    print('Total harga : ${b.name}: $totalPrice\nsetelah dikurangi : $d\n');
  }
}

class Product {
  String name;
  double price;
  int quantity;
  int id = 0;
  List<Map<String, dynamic>> product = [];

  Product({required this.name, required this.price, required this.quantity});

  void addProduct() {
    id++;
    product.add({'id': id, 'product': name, 'harga': price, 'jumlah': quantity});
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
      return 0;
    }
  }
}


//  5) Buatlah class Circle dengan properti radius. Tambahkan method calculateArea dan calculateCircumference yang mengembalikan luas dan keliling lingkaran.

// Buatlah class Book dengan properti title, author, dan publishedYear. Tambahkan method getBookInfo yang mengembalikan informasi buku dalam format "Judul: [title], Penulis: [author], Tahun Terbit: [publishedYear]".

// Buatlah class Car dengan properti brand, model, dan year. Tambahkan method startEngine yang mencetak pesan "Mobil [brand] [model] [year] telah dinyalakan."

// Buatlah class Person dengan properti name, age, dan address. Tambahkan method introduceYourself yang mencetak pesan "Halo, nama saya [name], saya berusia [age] tahun, dan saya tinggal di [address]."

// Buatlah class BankAccount dengan properti accountNumber, accountHolder, dan balance. Tambahkan method deposit dan withdraw untuk mengelola saldo rekening.

// Buatlah class Dog dengan properti name dan breed. Tambahkan method bark yang mencetak pesan "Guk guk! Saya adalah anjing [breed] bernama [name]."