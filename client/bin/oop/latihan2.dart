// Level 1: Pemula

// Studi Kasus: Budi ingin menghitung luas dan keliling persegi. Buatlah program sederhana dengan
// class Square yang memiliki properti sideLength dan method calculateArea serta calculatePerimeter untuk
// menghitung luas dan keliling persegi. Budi ingin memasukkan panjang sisi dan mendapatkan hasil luas dan kelilingnya.

// void main() {
//   double u = 9.0;
//   var y = Square(sideLenght: u);
//   print('luas y : ${y.calculateArea(18.00)}');
//   print('keliling y : ${y.calculatePerimeter()}');
// }

class Square {
  double? sideLenght;
  Square({this.sideLenght});

  double calculateArea(double num) {
    var y = sideLenght! * num;
    return y;
  }

  double calculatePerimeter() {
    var y = 4 * sideLenght!;
    return y;
  }
}
// Studi Kasus: Budi ingin menyimpan informasi tentang bukunya. Buat class Book dengan
//properti title dan author, serta method getBookInfo yang mengembalikan informasi buku. Budi ingin dapat mengakses informasi buku yang dimilikinya.

// void main() {
//   Book myBook = Book();
//   List<Map<String, dynamic>> bookInfoList =
//       myBook.getBookInfoList(5 ,['malin kundang', 'keong mas', 'prabu siliwangi']);
//   print('$bookInfoList');
// }

class Book {
  String? title;
  String? author;

  List<Map<String, dynamic>> getBookInfoList(int num, List<dynamic> bookList) {
    List<Map<String, dynamic>> bookInfoList = [];

    for (var y = 0; y <= num; y++) {
      Map<String, dynamic> bookInfo = {
        'index': y,
        'name': title,
        'author': author,
        'books': bookList,
      };
      bookInfoList.add(bookInfo);
    }

    return bookInfoList;
  }
}

// Level 2: Menengah

// Studi Kasus: Budi ingin mengelola daftar kontak temannya. Buat class Contact dengan properti name, phone, dan email, serta method untuk menambah, menghapus, dan menampilkan kontak. Budi ingin dapat menyimpan dan mengakses daftar kontak temannya.

void main() {
  List<Map<String, dynamic>> initialContacts = [
    {'name': 'Rifky', 'number': 123456789, 'email': 'rifky@example.com'},
    {'name': 'Meong', 'number': 987654321, 'email': 'meong@example.com'},
  ];

  ContactList contactList = ContactList();

  for (var i = 0; i < initialContacts.length; i++) {
    var u = initialContacts[i];
    contactList.addContact(
      Contact(
          name: u['name'], number: u['number'], email: u['email'], index: i),
    );
  }
  contactList.removeContact(0);
  contactList.showAllContacts();
}

class Contact {
  String? name;
  int? number;
  String? email;
  int? index;
  Contact({this.name, this.number, this.email, this.index});
}

class ContactList {
  List<Contact> contacts = [];

  void addContact(Contact newContact) {
    contacts.add(newContact);
  }

  void removeContact(int index) {
    contacts.removeWhere((contact) => contact.index == index);
  }

  void showAllContacts() {
    for (var contact in contacts) {
      print(
          'Index : ${contact.index}, Name: ${contact.name}, Number: ${contact.number}, Email: ${contact.email}');
    }
  }
}


// Studi Kasus: Budi ingin menghitung total belanjaannya di toko. Buat class ShoppingCart dengan properti items yang merupakan daftar item belanjaan, serta method addItem, removeItem, dan calculateTotalPrice untuk mengelola dan menghitung total harga belanjaan Budi.

// Level 3: Lanjutan

// Studi Kasus: Budi ingin memodelkan permainan sederhana dengan pemain dan skor. Buat class Player dengan properti name dan score, serta method untuk mengganti nama pemain dan menambah skornya. Budi ingin dapat mengelola pemain dan skor dalam permainannya.

// Studi Kasus: Budi ingin membuat aplikasi sederhana untuk mengelola catatan. Buat class Note dengan properti title dan content, serta method untuk menambah, mengedit, dan menghapus catatan. Budi ingin dapat mengelola catatan pribadinya.
