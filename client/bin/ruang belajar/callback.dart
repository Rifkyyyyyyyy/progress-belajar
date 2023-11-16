import 'dart:async';

void main() {
  MyAttribute myAttr = MyAttribute();
  myAttr.gretting('rifky', myAttr.adios);
}

class MyAttribute {
  Timer? adios;
  void c(List<dynamic> c, Function(dynamic) v) {}

  void gretting(String name, callback) {
    print('Hello $name');
    callback();
  }

  void startInterval() {
    adios = Timer.periodic(Duration(seconds: 2), (timer) {
      bye();
    });
  }

  void bye() {
    print('adioss ...');
  }
}
