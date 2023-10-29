void main() {
  var belajar = BelajarOperator();
  belajar.unaryPositive();
  belajar.equality();
  belajar.bitwiseAnd();
  belajar.bitwiseOr();
  belajar.bitwiseXor();
  belajar.logikaOr();
  belajar.andOperator();

  //

  int num = 2020;
  var project = HasilBelajar();
  String a = project.convert(num);
  print('Biner dari $num adalah $a');
}

class BelajarOperator {
  void unaryPositive() {
    // Metode ini akan menggambarkan penggunaan operator unary positive (+).
    double value = -5.0;
    double result = value + value;
    print('value : $value');
    print('result : $result');
  }

  void unaryPrefix() {
    // Metode ini akan menggambarkan penggunaan operator unary prefix (++, --)
  }

  void multiplicative() {
    // Metode ini akan menggambarkan penggunaan operator aritmetika perkalian (*), pembagian (/), dan modulo (%).
  }

  void additive() {
    // Metode ini akan menggambarkan penggunaan operator aritmetika penjumlahan (+) dan pengurangan (-).
  }

  void shift() {
    // Metode ini akan menggambarkan penggunaan operator shift bit (<< dan >>).
  }

  void bitwiseAnd() {
    // Metode ini akan menggambarkan penggunaan operator bitwise AND (&).
  }

  void bitwiseXor() {
    // Metode ini akan menggambarkan penggunaan operator bitwise XOR (^).
  }

  void bitwiseOr() {
    // Metode ini akan menggambarkan penggunaan operator bitwise OR (|).
    var y = 5;
    var x = 10;
    var value = x | y;
    print('nilai awal y : $y');
    print('nilai awal x : $x');
    print('hasil bilangan bulat : $value');
    print('dalam bentuk biner x : ${x.toRadixString(2)}');
    print('dalam bentuk biner y : ${y.toRadixString(2)}');
    print('result biner: ${value.toRadixString(2)}');
  }

  void typeCast() {
    // Metode ini akan menggambarkan penggunaan operator untuk casting tipe data.
  }

  void equality() {
    // Metode ini akan menggambarkan penggunaan operator perbandingan kesetaraan (==) dan ketidaksetaraan (!=).
  }

  void logikalAnd() {
    // Metode ini akan menggambarkan penggunaan operator logika AND (&&).
  }

  void logikaOr() {
    bool y = true;
    bool x = true;
    if (y || x) {
      print('halo');
    }
    if (!y) {
      print('halo juga');
    }
  }

  void logikaJikaNull() {
    // Metode ini akan menggambarkan penggunaan operator jika null (??).
  }

  void logikaConditional() {
    // Metode ini akan menggambarkan penggunaan operator kondisional (condition ? expr1 : expr2).
  }

  void cascade() {
    // Metode ini akan menggambarkan penggunaan operator cascade (..) untuk mengantre beberapa operasi pada objek yang sama.
  }

  void asiignment() {
    // Metode ini akan menggambarkan penggunaan operator assignment (=) dan berbagai bentuk assignment lainnya (+=, -=, *=, /=, dll.).
  }

  void andOperator() {
    bool y = true;
    bool x = false;
    var c = y && x;
    print(c);
  }
}

class HasilBelajar {
  String convert(int num) {
    if (num == 0) {
      return "0";
    }

    String binary = "";
    while (num > 0) {
      int x = num % 2;
      binary = (x == 1 || binary.isEmpty) ? '1$binary' : "0$binary";
      num ~/= 2;
    }

    return binary;
  }
}
