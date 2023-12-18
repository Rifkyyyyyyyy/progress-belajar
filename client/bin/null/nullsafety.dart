class BangNull {
  int? nulles;

  void bangNull() {
    print(nulles.runtimeType);
    var a = nulles ??
        0; // ni maksudnya disini ngasih nilai awal , kan awalnya null tuh valuenya , terus dikasih 0
    print(a);
  }
}

// void main() {
//   var a = BangNull();
//   a.bangNull();
//   var v = a.nulles == null ? 'yes' : 'no';
//   print(v);
// }

class Y {
  int? a;

  void chechup() {
    var s = a ?? 1;
    print(s);
    var b = (a == null) ? 'yes' : 'no';
    print(b);
  }
}

// void main() {
//   var a = Y();
//   a.chechup();
// }

void main() {
  var a = Sample(10, bilangan: 10 * 2 + 2);
  print(a.num);
  print(a.bilangan);
}

class Sample {
  int num;
  int? bilangan;
  Sample(this.num, {this.bilangan});
}
