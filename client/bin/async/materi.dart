// void main() async {
//   List<String> nama = ['rifky', 'kucing', 'mael'];
//   await a(nama).then((_) {
//     if (nama.contains('r') || nama.contains('rifky')) {
//       print('Done !');

//     }
//   });
// }

Future<void> a(List<String> s) async {
  return Future.delayed(Duration(seconds: 2), () {
    for (var i = 0; i < s.length; i++) {
      var x = 'Hello ${s[i]}';
      print(x);
    }
  });
}

void main() async {
  List<String> nama = ['rifky', 'kucing', 'mael'];
  await aa(nama).then((value) => print(value));
}

Future<String> aa(List<String> s) async {
  await Future.delayed(Duration(seconds: 2), () {
    for (var i in s) {
      var x = 'Hello $i';
      print(x);
    }
  });

  return s.toString();
}

