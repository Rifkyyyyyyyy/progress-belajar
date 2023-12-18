import 'dart:io';
import "dart:math";

/// belajar enkapsulasi

// void main() {
//   Sample sample = Sample(20 * 20);
//   print(sample.bilangan);
// }

// class Sample {
//   int num;
//   Sample(this.num);
//   int get bilangan => num;

//   set apalah(value) {
//     var a = value >= 0 ? num = value : 'mantap';
//     print(a);
//   }
// }

// enkapsulasi
class Persegi {
  double _panjang;
  double _lebar;

  // method public

  void setPanjang(double value) {
    if (value > 0) {
      value = value.abs();
    }
    _panjang = value;
  }

  double hitung() {
    return this._panjang * _lebar;
  }

  // Konstruktor
  Persegi(this._lebar, this._panjang);
}

void main() {
  Persegi kotak1, kotak2;
  double luasKotak1;

  kotak1 = Persegi(0, 0);
  kotak1.setPanjang(-2);
  kotak1._lebar = 3;

  kotak2 = Persegi(0, 0);
  kotak2.setPanjang(10);
}



