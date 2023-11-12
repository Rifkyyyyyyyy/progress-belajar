// Studi Kasus 1: Aplikasi Pencarian Nilai Tertinggi
// Andi sedang mengembangkan sebuah aplikasi untuk menemukan nilai tertinggi dari sejumlah data yang dimasukkan pengguna.
// Aplikasi ini menerima sejumlah bilangan dari pengguna dan kemudian menampilkan nilai tertinggi.
// Andi meminta bantuan Anda untuk membuat fungsi yang dapat membantu dalam menemukan nilai tertinggi dari kumpulan data yang dimasukkan.

void main() {
  print(m([10, 29, 20, 79, 1, 20, 192]));
}

int m(List<int> num) {
  if (num.isEmpty) {
    print('e');
  }
  int max = num[0];
  for (var i = 0; i < num.length; i++) {
    if (num[i] > max) {
      max = num[i];
    }
  }
  return max;
}

// Studi Kasus 2: Sistem Manajemen Inventori

// Sebuah perusahaan memiliki sistem manajemen inventori untuk melacak jumlah barang yang tersedia dalam gudang mereka.
// Mereka ingin mengembangkan sebuah program menggunakan Dart yang dapat menambahkan, mengurangi, dan menampilkan stok barang berdasarkan permintaan dari gudang.
// Dalam hal ini, Anda diminta untuk membuat fungsi-fungsi yang dapat menangani operasi-operasi tersebut pada array yang merepresentasikan stok barang.

// Studi Kasus 3: Pengelompokan Data

// Seorang analis data memiliki kumpulan data yang besar dan ingin mengelompokkan angka-angka dalam array berdasarkan kategori tertentu.
// Mereka ingin membuat fungsi yang dapat mengelompokkan bilangan positif, bilangan negatif, dan nol ke dalam array-array terpisah sesuai dengan kategorinya.

// Studi Kasus 4: Pencarian Angka Spesifik

// Seorang pengguna ingin mencari keberadaan angka tertentu dalam array yang cukup besar. Mereka meminta Anda untuk membuat fungsi pencarian yang akan memberi tahu apakah angka yang mereka cari ada dalam array tersebut atau tidak.
