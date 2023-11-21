import 'dart:async';

void maun() {
  hs(10).then((value) => value * 10).then((value) {
    if (value == 100) {
      print('yes $value');
    }
  });
}

Future<int> hs(int num) {
  return Future.value(num);
}

void main() {
  var name = ['rifky', 'samsul', 'udin'];
  greeting(name).then((value) {
    for (var i = 0; i < value.length; i++) {
      var a = 'Hello';
      var b = '$a ${value[i]}';
      print(b);
    }
  });
}

Future<List<String>> greeting(List<String> s) async {
  await Future.delayed(Duration(seconds: 2));

  List<String> modifiedList = s.map((name) => name).toList();

  return Future.value(modifiedList);
}


Future<void> s () async {
  
}