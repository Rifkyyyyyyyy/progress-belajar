abstract class Mantap {
  int o;
  int y;
  int bilangan(int num, int angka);

  Mantap(this.o, this.y);
}

class Sample extends Mantap {
  Sample(int o, int y) : super(10, 20);

  @override
  int bilangan(int num, int angka) {
    var i = o * y;
    if (i > 10) {
      var s = num * angka;
      return s;
    } else {
      return 0;
    }
  }
}

void main() {
  Sample sample = Sample(20, 10);
  print(sample.bilangan(10, 20));
}
