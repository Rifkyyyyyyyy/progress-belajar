void maun() {
  // String a = 'makan apa kamu ?';
  // for (var i = 0; i < a.length; i++) {
  //   var t = a[i];
  //   print(t);
  // }

  // int u = 0;
  // var y = [1, 2, 3, 4, 5];
  // Set<int> s = {1 , 2 , 3 , 4, 5};
  // while (u < a.length) {
  //   var t = a[u];
  //   print(t);
  //   u++;
  // }
  // do {
  //   var t = a[u];
  //   print(t);
  //   u++;
  // } while (u < a.length);
  // y.forEach((element) => print('$element'));
  // print('\n');
  // for (var a in y) {
  //   print(a);
  // }
}

// dalam dart loop dibagi menjadi 4 , yaitu , for , while , dowhile , foreach

void main() {
  int num = 0;
  var v = BelajarLoop();
  // v.forLoop(num);
  v.whileLoop(num);
}

class BelajarLoop {
  void forLoop(int u) {
    for (var y = 0; y <= u; y++) {
      var c = u * y;
      print(c);
    }
  }

 void whileLoop(int num) {
  while (num < 10) {
    var str = 'Hello, World!';
    if (num < str.length) {
      var y = str[num];
      print(y.toString());
    } else {
      print('');
    }
    num++; 
  }
}
}
