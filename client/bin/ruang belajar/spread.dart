void main() {
  List<int> a = [1, 2, 3, 4, 5];
  List<String> b = ['enam', 'tujuh', 'delapan', 'sembilan', 'sepuluh'];
  List<dynamic> gabungArgumen = [...a, ...b];
  BelajarSpread operatorSpread = BelajarSpread();
  operatorSpread.belajar();
  operatorSpread.restOperator(gabungArgumen);
  operatorSpread.loop();
}

class BelajarSpread {
  List<dynamic> a = [1, 2, 3, 4, 5];
  List<dynamic> b = [6, 7, 8, 9, 10];

  void loop() {
    for (var x in b) {
      print(x);
    }
  }

  void belajar() {
    List<dynamic> spread;
    spread = [...a, ...b];
    print(spread);
  }

  void restOperator(List<dynamic> a) {
    print(a);
  }
}
