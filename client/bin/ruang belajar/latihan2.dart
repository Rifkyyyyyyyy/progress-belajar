void main() {
  print('soal no 1 :\n');
  soalNo1();
  print('soal no 2 :\n');
  soalNo2();
  print('soal no 3 :\n');
  soalNo3();
  print('soal no 4 :\n');
  soalNo4();
  print('soal no 5 :\n');
  soalNo5();
  print('soal no 6 :\n');
  soalNo6();
  print('soal no 7 :\n');
  soalNo7();
  print('soal no 8 :\n');
  soalNo8();
  print('soal no 9 :\n');
  soalNo9();
  print('soal no 10 :\n');
  soalNo10();
  print('soal no 11 :\n');
  soalNo11();
  print('soal no 12 :\n');
  soalNo12();
  print('soal no 13 :\n');
  soalNo13();
  print('soal no 14 :\n');
  soalNo14();
  print('soal no 15 :\n');
  soalNo15();
}

// 1 . Membuat List: Buatlah sebuah list dalam Dart yang berisi 5 nama buah.
// Contoh: ["apel", "jeruk", "mangga", "pisang", "strawberi"].

void soalNo1() {
  List<String> a = ['apel', 'jeruk', 'mangga', 'pisang', 'strawberi'];
  print(a);
}

// 2. Akses Elemen: Dalam list buah yang Anda buat, bagaimana Anda akan mengakses elemen "mangga"?

void soalNo2() {
  List<String> a = ['apel', 'jeruk', 'mangga', 'pisang', 'strawberi'];
  print(a[2]);
}

// 3. Perubahan Elemen: Ubah elemen ke-3 dalam list buah Anda menjadi "anggur". Bagaimana Anda melakukannya?

void soalNo3() {
  List<String> a = ['apel', 'jeruk', 'mangga', 'pisang', 'strawberi'];
  a[2] = 'anggur';
  print(a);
}

// 4 . Menambahkan Elemen: Tambahkan buah "kiwi" ke dalam list buah Anda. Bagaimana Anda melakukannya?

void soalNo4() {
  List<String> a = ['apel', 'jeruk', 'mangga', 'pisang', 'strawberi'];
  a.add('kiwi');
  print(a);
}

// 5. Menghitung Panjang List: Berapakah panjang (jumlah elemen) dari list buah Anda?

void soalNo5() {
  List<String> a = ['apel', 'jeruk', 'mangga', 'pisang', 'strawberi'];
  print(a.length);
}

// 6. Iterasi List: Bagaimana Anda akan menggunakan perulangan (loop) untuk mencetak setiap elemen dalam list buah Anda?

void soalNo6() {
  List<String> a = ['apel', 'jeruk', 'mangga', 'pisang', 'strawberi'];
  for (var i in a) {
    print(i);
  }
}

// 7. Menghapus Elemen: Hapus buah "pisang" dari list buah Anda. Bagaimana Anda melakukannya?

void soalNo7() {
  List<String> a = ['apel', 'jeruk', 'mangga', 'pisang', 'strawberi'];
  a.removeAt(3);
  print(a);
}

// 8. Menggabungkan List: Buat list baru yang berisi 3 nama buah tambahan, lalu gabungkan list baru ini dengan list buah Anda. Bagaimana Anda melakukannya?

void soalNo8() {
  List<String> a = ['apel', 'jeruk', 'mangga', 'pisang', 'strawberi'];
  List<String> b = ['buah naga', 'salak', 'lengkuas'];
  var y = [a, ...b];
  print(y);
}

// 9. Mencari Elemen: Bagaimana Anda akan memeriksa apakah "apel" ada dalam list buah Anda?

void soalNo9() {
  List<String> a = ['apel', 'jeruk', 'mangga', 'pisang', 'strawberi'];
  if (a.contains('apel')) {
    print('yes');
  } else {
    print('no');
  }
}

// 10. Mengurutkan List: Urutkan list buah Anda dalam urutan alfabet. Bagaimana Anda melakukannya?

void soalNo10() {
  List<String> a = [
    'apel',
    'mangga',
    'jeruk',
    'srikaya',
    'pisang',
    'strawberi'
  ];
  a.sort();
  print(a);
}

// 11. Filtering List: Buat list baru yang berisi semua buah yang memiliki lebih dari 5 huruf. Bagaimana Anda melakukannya?

void soalNo11() {
  List<dynamic> a = ['apel', 'jeruk', 'mangga', 'pisang', 'strawberi'];
  List<dynamic> b = a.where((element) => element.length > 5).toList();
  print(b);
}

// 12. Mengganti Elemen: Gantilah buah ke-2 dalam list buah Anda dengan "nanas". Bagaimana Anda melakukannya?

void soalNo12() {
  List<String> a = ['apel', 'jeruk', 'mangga', 'pisang', 'strawberi'];
  a[1] = 'nanas';
  print(a);
}

// 13. Menghitung Kemunculan Elemen: Berapa kali "apel" muncul dalam list buah Anda?

void soalNo13() {
  List<String> a = ['ab', 'bc', 'aa', 'ab', 'bc', 'bc', 'bc'];
  String target = 'bc';

  int count = a.where((item) => item == target).length;

  print("Jumlah kemunculan '$target': $count");
}

// 14. Menghapus Elemen Berdasarkan Kondisi: Hapus semua buah yang memiliki lebih dari 6 huruf dari list buah Anda. Bagaimana Anda melakukannya?

void soalNo14() {
  List<String> a = ['apel', 'jeruk', 'mangga', 'starawberi', 'nanas', 'pisang'];
  List<String> b = [];
  for (var i in a) {
    if (i.length <= 6) {
      b.add(i);
    }
  }
  a = b;
  for (var i in a) {
    print(i);
  }
}

// 15. Penggunaan List dalam Perulangan: Buat perulangan yang mencetak setiap elemen dalam list buah Anda beserta indeksnya (posisinya dalam list).

void soalNo15() {
  List<String> a = ['apel', 'jeruk', 'mangga', 'strawberi', 'nanas', 'pisang'];
  for (int i = 0; i < a.length; i++) {
    print('index dari $a[$i] adalah $i');
  }
}
