// void main() {
//   // abc();
//   s();
// }

// void abc() {
//   var u = 10;
//   var y = u == 10 && u == 9 ? 'yes' : 'no';
//   var i = u != 9 || u == 10 ? 'yes' : 'no';
//   var o = u >= 10 && u <= 8 ? 'yes' : 'no';
//   var t = u % 2 == 0 ? 'yes' : 'no';
//   var q = 2 + (2 * 4) == u ? 'yes' : 'no';
//   var w = u.isNaN ? 'yes' : 'no';

//   print('1 : $y');
//   print('2 : $i');
//   print('3 : $o');
//   print('4 : $t');
//   print('5 : $q');
//   print('6 : $w');

//   if (u != 9) {
//     print('yes');
//   } else {
//     print('no');
//   }
// }

// void s() {
//   var e = [1.3, 12.2, 2.2, 12.2, 5.5];
//   var p = [1, 2, 3, 4, 5];
//   var y = [...e, ...p];
//   print(y);
//   var u = y[3] * (2 + 2) < 29.9 && e[4] - (2.0 * 2) > 1.0 ? 'yes' : 'no';
//   if (u == 'yes') {
//     print(u);
//   } else {
//     print('no');
//   }
// }

void main() async {
  await msa(10).then((value) {
    var u = value * 10;
    var y = u > 120 ? 'yes' : 'no';
    var s = u * (2 - 100) == 100 ? 'yes' : 'no';
    print(s);
  });
}

Future<int> msa(int s) async {
  return Future.value(s);
}
