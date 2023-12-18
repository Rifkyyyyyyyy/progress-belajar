class Satu {
  int num;

  Satu(this.num);
}

class Dua extends Satu {
  Dua(int num) : super(num) {
    if (num > 0) {
      print('bilangan positif');
    } else {
      print('bilangan negatif');
    }
  }
}

void main() {
  Satu satu = Satu(42);
  print("Nilai dari satu: ${satu.num}");

  Dua dua = Dua(-99);
  print("Nilai dari dua: ${dua.num}");
}
