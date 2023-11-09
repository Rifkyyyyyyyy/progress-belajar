// Perulangan Bilangan Genap:
// Buatlah program yang mencetak semua bilangan genap dari 1 hingga 20.

// void main() {
//   for (var i = 1; i <= 20; i++) {
//     if (i % 2 == 0) {
//       print(i);
//     }
//   }
// }

// Tabel Perkalian:
// Buatlah program yang mencetak tabel perkalian untuk angka 5. Contoh output yang diharapkan:

// void main() {
//   int num = 5;
//   for (var i = 1; i <= 10; i++) {
//     var a = num * i;
//     print('$num x $i = $a');
//   }
// }

// 5 x 1 = 5
// 5 x 2 = 10
// 5 x 3 = 15
// ...
// 5 x 10 = 50

// Bilangan Prima:
// Buatlah program yang memeriksa apakah suatu angka adalah bilangan prima atau bukan. Program harus menerima input dari
// pengguna dan memberikan jawaban apakah angka tersebut adalah bilangan prima atau tidak.

void main() {
  print(prima(11));
}

bool prima(int num) {
  int i = 5;
  if (num <= 1) {
    return false;
  }
  if (num <= 3) {
    return true;
  }
  if (num % 2 == 0 || num % 3 == 0) {
    return false;
  }
  while (i * 5 <= num) {
    if (num % i == 0 || num % (i + 2) == 0) {
      return false;
    }
    i += 6;
  }
  return true;
}

// Deret Fibonacci:
// Buatlah program yang mencetak deret Fibonacci dengan panjang tertentu. Deret Fibonacci dimulai dengan 0 dan 1, dan setiap angka berikutnya adalah hasil penjumlahan dua angka sebelumnya. Contoh output yang diharapkan untuk deret Fibonacci dengan panjang 10:


// 0 1 1 2 3 5 8 13 21 34