void main() {
  // var b = Person();
  // print(b.name);
  // b.name = 'rifky';
  // print(b.name);\
  final name = 'rifky';
  var c = Person2();
  c.endpoint(name, name);
  String ea = 'r';
  c.c(name, ea);
}

// class Person {
//   String name = 'guest';
//   String? andress;
//   final nameAll = 'name';
// }

// method / membuat sebuah fungsi dalam class

class Person2 {
  void a(String name) {
    print('how are you $name ?');
  }

  void b(String n, var x) {
    print('hello  $n');
    a(x);
  }

  String c(String ny, var u) {
    if (ny.contains(u)) {
      print('yes');
    } else {
      print('no');
    }
    return u;
  }

  void endpoint(String n, var x) {
    b(n, x);
  }
}
