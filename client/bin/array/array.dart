// belajar method dari array

// void main() {
//   jj();
// }

// void jj() {
//   var u = [];
//   print(u.isEmpty);
//   print(u.indexOf(0));
// }

// void main() {
//   var y = [1, 2, 3];
//   var u = [
//     1,
//     [...y]
//   ];
// print(u.indexed);
// for (var i = 0; i <= u.length; i++) {
//   print(i);
// }
// for (var s in u) {
//   print(s);
// }
//   print(u.first);
//   print(u.last);
//   print(u.asMap());
//   a();
// }

// void a() {
//   var u = [1, 2, 3, 4, 5];
//   int num = 29;
//   u.add(num);
//   print(u);
//   print(u.length);
//   u.sort((a, b) {
//     var s = a + (b * 2);
//     print(s);
//     return s;
//   });
//   int s = 0;
//   u.sort((a, b) {
//     if (a >= b) {
//       s += a;
//     }
//     return 0;
//   });
// }

// method sort

// void main() {
//   var a = ['v', 'f', 'c', 'a'];
//   a.sort();
//   print(a);
// }

// void main() {
//   var s = ['makan', 'tidur', 'main'];
//   var u = s[0] == 'makan' ? 'yes' : 'no';
//   print(u);
// }

void main() {
  as();
}

void oo() {
  var u = [1, 2, 3, 4, 5];
  var y = [6, 7, 8, 9, 10];
  var t = [...u, ...y];
  var e = t.runtimeType == List || t.runtimeType == Set ? 'yes' : 'no';
  print(e);
  for (var i = 0; i < t.length; i++) {
    print(t[i] * 2);
  }
}


void as() {
  var u = [3, 2, 1, 4, 5];
  var s = u[0];
  List<int> result = [];

  for (var i = 0; i < u.length; i++) {
    if (u[i] > s) {
      result.add(u[i]);
    }
  }

  for (var i = result.length - 1; i >= 0; i--) {
    print(result[i]);
  }
}
