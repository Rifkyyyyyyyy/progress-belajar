import 'dart:math';

final Random random = Random();

void main() {
  // perkalianAntaraIndex();
  // mencariBilanganTerbesar();
  perkalianIndexI();
}

void perkalianAntaraIndex() {
  var u = [
    [10.0, 20.0, 39.0, 48.0, 68.0],
    [28.0, 90.0, 12.0, 34.0, 88.0]
  ];

  for (var i = 0; i < u[0].length; i++) {
    for (var j = 0; j < u[1].length; j++) {
      var y = u[0][i];
      var o = u[1][j];
      var result = y * o;
      print('bilangan y : $y');
      print('bilangan o : $o');
      print('hasil perkalian : $result\n');
    }
  }
}

void mencariBilanganTerbesar() {
  var u = [
    [10.0, 20.0, 39.0, 48.0, 68.0],
    [28.0, 90.0, 12.0, 34.0, 88.0]
  ];

  double terbesar = u[0][1];

  for (var i = 0; i < u.length; i++) {
    for (var j = 0; j < u[i].length; j++) {
      if (u[i][j] > terbesar) {
        terbesar = u[i][j];
      }
    }
  }

  print("Bilangan terbesar: $terbesar");
}

double perkalianIndexI() {
  var u = [
    [10.0, 20.0, 39.0, 48.0, 68.0],
    [28.0, 90.0, 12.0, 34.0, 88.0]
  ];

  for (var i = 0; i < u[0].length; i++) {
    if (u[0][i] == u[0][1]) {
      var b = u[0][1];
      var c = b * (100 + 20).toDouble();
      if (c > (2000).toDouble() && c.runtimeType == double) {
        var v =
            c + (1000 - 8) + u[1][1] * random.nextInt(200) * (10).toDouble();
        print('hasil : $v');
        return v;
      }
    }
  }
  return 0.0;
}

void matrix() {}

