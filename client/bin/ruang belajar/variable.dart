void main() {
  // Text(9, 'woyyy');
  var a =  CheckTheType(1 , '2' , 1.2 , [] , {} , {});
  a.output();
}

// Text(int a, String b) {
//   for (int x = 0; x < b.length; x++) {
//     print(b[x]);
//   }
// }

class CheckTheType {
  int i;
  String b;
  double x;
  List c;
  Map<int, dynamic> s;
  Set<dynamic> a;
  bool y = true;

  CheckTheType(this.i, this.b, this.x, this.c, this.s, this.a);

  output() {
    print(i.runtimeType);
    print(b.runtimeType);
    print(x.runtimeType);
    print(c.runtimeType);
    print(s.runtimeType);
    print(a.runtimeType);
    print(y.runtimeType);
  }
}
