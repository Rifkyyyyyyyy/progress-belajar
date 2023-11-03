import 'package:test/test.dart';

void main() {
  List<int> value = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  Set<dynamic> valueSet = Set<dynamic>.from(value);
  operatorX NewOperator = operatorX();
  NewOperator.perbandingan();
  NewOperator.aritmatika();
  NewOperator.penugasan();
  NewOperator.logika();
  NewOperator.cekKelulusan(75.5, 80.5);
  NewOperator.perbandinganOr(false, false);
  NewOperator.propertiDariArray([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]);
  NewOperator.stringProperty();
  NewOperator.dibalik(true);
  NewOperator.typeCast('hello', true);
  NewOperator.property();
  NewOperator.checkIndexList();
  NewOperator.belajarSet(valueSet);
  NewOperator.seeText();
  NewOperator.belajarMap();
}

class operatorX {
  void perbandingan() {
    int d = 10;
    int c = 5;

    if (d == c) {
      print('yes');
    } else {
      print('no');
    }

    if (d != c) {
      print('yess');
    } else {
      print('no');
    }
  }

  void aritmatika({int b = 10, int x = 20}) {
    if (x - 10 == b) {
      print('yes benar');
    } else {
      print('dongo');
    }

    if (b ~/ x != 0) {
      print('salah');
    } else {
      print('benar');
    }
  }

  void penugasan() {
    List<int> s = [1, 2, 3, 4, 5];
    if (s.length == 5) {
      print(s[0] += 10);
      print(s[3] *= 10);
      print(s[4] %= 2);
      print(s[2].toDouble());
      print(s[2] = s[2] ~/ 2.5);
    }
  }

  void logika() {
    bool s = true;
    bool y = true;
    print(!s);
    dynamic x = (s | y).runtimeType == bool ? 'yes' : 'no';
    dynamic c = (s.runtimeType == bool && y.runtimeType == bool ? 'yes' : 'no');
    print(c);
    print(x);
  }

  bool isNumeric(dynamic value) {
    return value is int || value is double;
  }

  void cekKelulusan(dynamic num, dynamic num2) {
    int nilaiMinimal = 90;
    int nilaiRata = 75;
    List<String> s = ['A', 'B', 'C'];

    if (!isNumeric(num) || !isNumeric(num2)) {
      print('Invalid input');
      return;
    } else {
      if (num >= nilaiMinimal && num2 >= nilaiMinimal) {
        print('Selamat, nilai kamu ${s[0]}');
      } else if (num >= nilaiRata && num2 >= nilaiRata) {
        print('Selamat, nilai kamu ${s[1]}');
      } else {
        print('Maaf, nilai kamu ${s[2]}\nKamu belum lulus.');
      }
    }
  }

  void perbandinganOr(bool s, bool y) {
    if (s || y) {
      print('salah euy');
    } else {
      print('bener euy');
    }
  }

  void propertiDariArray(List<dynamic> s) {
    dynamic a = s.length;
    if (s.length >= a) {
      print('panjang s adalah $a');
    }
  }

  void stringProperty() {
    var s = 'hello';
    String w = 'h';
    print(s.length);
    if (s.contains(w)) {
      print('ya variabel s mengandung karakter : $w');
    }
  }

  void dibalik(bool x) {
    print(!x);
  }

  dynamic typeCast(dynamic a, dynamic x) {
    if (a is int || a is String) {
      return '$a';
    }
    if (x is! int || a is! String) {
      return '$x';
    }

    print('yes : $a');
    print('yes : $a');
  }

  void checkIndexList() {
    var s = <dynamic>[];
    List<int> v = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
    if (v.length > 1) {
      v[0] = 10;
      v.removeAt(0);
    }
    s.addAll(v);
    print(s);
    print(s.length);
  }

  void property() {
    Map<dynamic, dynamic> s = {};
    List<int> c = [1, 2, 3, 4, 5];
    c.forEach((index) {
      if (index == c[1]) {
        c[1] = 10;
      }
      print('hasil loop : ${index}');
    });
  }

  void belajarSet(Set<dynamic> a) {
    print(a);
  }

  int checkAt(String a, String b) {
    int c = a.indexOf(b);
    return c;
  }

  void seeText() {
    String x = "halo ler";
    String c = 'a';
    print(checkAt(x, c));
  }

  void belajarMap() {
    String detail() {
      return "Jl kh mustofa rw 05/03";
    }

    Map<dynamic, dynamic> about = {
      'name': 'rifky',
      'age': 19,
      'city': 'kota tanggerang',
      'jalan': detail(),
    };
    print('panjang : ${about.length}');

    if (about.containsKey('age')) {
      print('Usia ditemukan: ${about['age']}');
    } else {
      print('Usia tidak ditemukan');
    }

    for (var key in about.keys) {
      var value = about[key];
      print('key $key\nvalue: $value');
    }

    if (about.containsKey('age')) {
      about.remove('age');
      print('Usia dihapus');
    }

    print('panjang setelah menghapus: ${about.length}');
  }
}
