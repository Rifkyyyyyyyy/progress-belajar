void main() {
  var b = BelajarIteration();
  // b.f1();
  b.sinkronIteration();
  // b.doWhile();
}

class BelajarIteration {
  List<dynamic> a = ['mangga', 'anggur', 'apel'];
  int counter = 1;
  int obj = 10;
  void f1() {
    for (var item in a) {
      print('index : $counter  item : $item');
      counter++;
    }
  }

  Future<void> sinkronIteration() async {
    for (int i = 0; i <= obj;) {
      var y = await Future.delayed(Duration(seconds: 1), () => i += 1);
      if (y == obj) {
        print('index : $i');
      } else {
        print(y);
      }
    }
  }

  // void doWhile() {
  //   int x = 1;
  //   do {
  //     print(x);
  //     x++;
  //   } while (x <= 10);
  // }
}
