// 1. **Bilangan Fibonacci:**
//    Buat program Dart yang menghasilkan deret bilangan Fibonacci hingga suku ke-n. Program harus meminta pengguna untuk memasukkan nilai n dan kemudian mencetak deret Fibonacci hingga suku ke-n.

//    - **Kisi-kisi Rumus:**
//      - Deret Fibonacci dimulai dengan dua suku pertama yaitu 0 dan 1.
//      - Setiap suku berikutnya merupakan hasil penjumlahan dua suku sebelumnya.
//      - Rumus rekursif untuk suku ke-n adalah ( F(n) = F(n-1) + F(n-2)), dengan ( F(0) = 0 ) dan ( F(1) = 1 \).

void main() {
  fibonannci(10);
}

int fibonannci(int deret) {
  if (deret <= 0) {
    return 0;
  } else if (deret <= 1) {
    return 1;
  } else {
    int numPertama = 0;
    int numKedua = 1;
    int hasil;

    for (int i = 2; i <= deret; i++) {
      hasil = numPertama + numKedua;
      numPertama = numKedua;
      numKedua = hasil;
      print(hasil);
    }
    return 0;
  }
}


// 2 . Bilangan Palindrom:
// Buat program Dart yang memeriksa apakah sebuah bilangan bulat yang dimasukkan oleh pengguna adalah bilangan palindrom atau bukan. Bilangan palindrom adalah bilangan yang dapat dibaca sama baik dari depan maupun dari belakang.

// Kisi-kisi Rumus:
// Bilangan palindrom adalah bilangan yang sama jika dibaca dari depan atau belakang.
// Anda dapat mengonversi bilangan tersebut menjadi string dan memeriksa apakah string tersebut bersifat palindrom atau tidak.
