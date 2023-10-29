void main() {
  var hitung = HitungRuas();
  hitung.ruas(10.5, 2.6);
}

class HitungRuas {
  void ruas(double pi, dynamic n) {
  if (n is double) {
    double hasilRuas = pi * n;
    print(hasilRuas);
  } else {
    print("Salah satu atau kedua parameter bukan double.");
  }
}
}
