import 'dart:async';

void main() {
  myAttribute myAttr = myAttribute();
  myAttr.gretting('rifky', myAttr.adios);
}

class myAttribute {
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
