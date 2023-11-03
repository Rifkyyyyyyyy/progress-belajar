import 'class3.dart';

void main() {
  var a = Parents();
  print('nilai a : ${a.a}');
  print('nilai b : ${a.b}');
  a.cuy();
}

class Parents extends Satu {
  String c = 'kuproy';
  int s = 19;
  Parents() : super() {
    a = c;
    b = s;
  }

  void cuy() {
    a = 'bapaklu';
    print('$a ganteng');
  }
}
