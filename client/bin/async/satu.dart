// import 'dart:async';

// void main() async {
//   int f = 2;
//   var i = await s(f);
//   print(i);
// }

// Future<int> s(int num) async {
//   var result = await c(num);
//   return result;
// }

// Future<int> c(int num) async {
//   await Future.delayed(Duration(seconds: 2));
//   int product = 1;
//   for (var u = 1; u <= num; u++) {
//     product *= u;
//   }
//   return product;
// }

void main() async {
  await sin().then((_) {
    print('program selesai !');
  });
}

Future<void> sin() async {
  List<String> a = [
    'halo',
    'apa kabar',
    'lagi dimana',
    'sedang apa',
    'apakah kamu baik',
    'hati-hati di jalan'
  ];
  try {
    for (var i = 0; i < a.length; i++) {
      if (i == 1) {
        await Future.delayed(Duration(seconds: 2), () {
          print(a[i]);
        });
      } else {
        await Future.delayed(Duration(seconds: 1), () {
          print(a[i]);
        });
      }
    }
  } catch (e) {
    print(e);
  }
}
