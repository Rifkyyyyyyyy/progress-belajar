// void main() {
//   abc(4);
// }

// int abc(int num) {
//   String a = '';
//   for (var i = 0; i < num; i++) {
//     for (var j = 0; j < i; j++) {
//       a += '*';
//       print(a);
//     }
//   }
//   return num;
// }

// void main() {
//   abc(5);
// }

// void abc(int num) {
//   for (var i = 0; i < num; i++) {
//     print('index i : $i');
//     if (i == 2) {
//       var y = 2 + (i * 2) - (2 + 2).toDouble() ;
//       print(y);
//     } else if (i == 4) {
//       var u = 2 % (i + 2);
//       print(u);
//     }
//   }
// }

void main() {
  var u = [1, 2, 3, 4, 5];
  abc(u);
}

void abc(List a) {
  int num = 20;
  int counter = 0;
  for (var i = 0; i < a.length; i++) {
    print('ini bilangan i $i');
    for (var j = 0; j <= i; j++) {
      print('loop $counter j : $j ');
      var s = a[j] * 2 + (2 % num);
      print('ini bilangan s : $s');
      counter++;
    }
  }
}
