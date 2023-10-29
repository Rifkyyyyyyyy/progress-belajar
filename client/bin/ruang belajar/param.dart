// void main() {
//   Param belajarParameter = Param();
//   belajarParameter.paramObj(name : 'rifky');
//   belajarParameter.subsitusion(10, 2);
//   print(belajarParameter.x(10, 10));
// }

// class Param {
//   void paramObj({String ? name}) {
//     print(name);
//   }

//   bool num(dynamic y, dynamic x) {
//     return y is int && x is int;
//   }

//   int subsitusion(dynamic x, dynamic y) {
//     if (num(x, y)) {
//       var u = x * y;
//       print(u);
//     } else {
//       print('maaf bilangan harus berupa angka');
//     }
//     return 0;
//   }

//   int Function(int, int) x = (int b, int y) => b * y;
// }

void main({int num = 0}) {
  for (int i = 10; i > num;) {
    int a = num += 1;
    print(a);
  }
}
