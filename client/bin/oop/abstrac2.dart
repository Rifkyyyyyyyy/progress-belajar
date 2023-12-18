abstract class Satu {
  double sample();
}

class Dua extends Satu {
  double? side;
  Dua({this.side});

  @override
  double sample() => 3.14 * side! * side!;
}

// void main() {
//   var a = Dua(side: 90.0);
//   print(a.sample());
//   var b = Sample2();
//   print(b.a(10));
//   var c = BelajarKata();
//   c.a('Rifky firmansyah');
// }

abstract class Sample {
  int a(int num);
}

class Sample2 extends Sample {
  int b = 10;

  @override
  int a(int num) => num + b;
}

abstract class Kata {
  void a(String name);
}

class BelajarKata extends Kata {
  int counter = 0;

  @override
  void a(String name) {
    while (counter < name.length) {
      var b = name[counter];
      print(b);
      counter++;
    }
  }
}

void sample(int y) {
  int a = 0;
  while (a <= y) {
    var b = a.toString();
    print(b.runtimeType);
    a++;
  }
}

void main() {
  sample(10);
}
