// void main() {
//   Kelas2 kelas2 = Kelas2(a: 42, b: "Hello, World");
//   kelas2.printValues();
// }

// class Kelas1 {
//   int? a;
//   String? b;

//   Kelas1({this.a, this.b});
// }

// class Kelas2 extends Kelas1 {
//   Kelas2({int? a, String? b}) : super(a: a, b: b);

//   void printValues() {
//     print("Nilai a: $a");
//     print("Nilai b: $b");
//   }
// }

// void main() {
//   var b = Anak(b: "Nilai B", c: 42);
//   b.ac();
//   print('nilai a dari anak adalah : ${b.a}');
//   print('nilai b dari anak adalah : ${b.b}');
//   print('nilai c dari anak adalah : ${b.c}');
// }

// class Induk {
//   List<String>? a;
//   String? b;
//   int? c;

//   Induk({List<String>? a, this.b, this.c}) : a = a ?? [];
// }

// class Anak extends Induk {
//   Anak({dynamic b, int? c}) : super(b: b, c: c) {
//     a = [b, c.toString()];
//   }

//   void ac() {
//     if (a != null && a is List) {
//       print('a adalah List');
//     }
//   }
// }

void main() {
  var b = Child();
  print('nilai a : ${b.a}');
  print('nilai b : ${b.b}');
}

class Parents {
  String? a;
  int? b;

  Parents({this.a, this.b});
}

class Child extends Parents {
  String v = 'rifky';
  int u = 19;

  Child() : super() {
    a = v;
    b = u;
  }
}
