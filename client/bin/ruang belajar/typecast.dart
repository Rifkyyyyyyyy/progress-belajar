void main() {
  typeCast1();
  b();
}

// typecast adalah metode untuk convert type(data) dalam variabel ke variabel lainnya.

void typeCast1() {
  var value = '20';
  var num = int.tryParse(value);
  if (num != null) {
    print('typedata num adalah ${num.runtimeType}');
  } else {
    print('String');
  }
}


// type cast value :
// as
// is
// as Operator: Digunakan untuk mengubah tipe data jika Anda yakin bahwa objek dapat dikonversi ke tipe yang dituju.

// is Operator: Digunakan untuk memeriksa apakah objek adalah tipe tertentu sebelum mencoba mengonversinya.

// Konstruktor Tipe Data: Beberapa tipe data memiliki konstruktor yang memungkinkan Anda untuk mengonversi tipe data yang lain. Misalnya, Anda dapat mengonversi int menjadi double dengan menggunakan konstruktor double().

// tryParse(): Metode tryParse() digunakan untuk mengonversi string menjadi tipe data numerik seperti int atau double.

// toString(): Metode toString() digunakan untuk mengonversi tipe data menjadi string.

// toList() dan toSet(): Untuk koleksi seperti List dan Set, Anda dapat menggunakan metode toList() dan toSet() untuk mengonversi antara keduanya.

// toMap(): Digunakan untuk mengonversi objek yang mengimplementasikan Map ke dalam bentuk Map.

void b() {
  Object? a = 'halo';
  var c = a.toString();
  print(c.runtimeType);
}
