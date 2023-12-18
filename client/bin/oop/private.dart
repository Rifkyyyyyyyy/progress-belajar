class _Sample {
  int num;
  int b;
  String s;
  List xs;
  _Sample(this.num, this.b, {required this.s, required this.xs});
}

class Num extends _Sample {
  int k;
  int y;
  List<int> xp = [1, 2, 3, 4, 5];
  List<int> xy = [6, 7, 8, 9, 10];
  Num({required this.k, required this.y})
      : super(20, 10, s: "mantap", xs: [1, 2, 3, 4, 5]);
}

void main() {

  var a = Num(k: 20, y: 15);
  var y = a.k * a.num;
  for (var i = 0; i <= a.xs.length; i++) {
    print(i * a.k);
  }
  print(y);
  print(a.b);
  print(a.s);
}
