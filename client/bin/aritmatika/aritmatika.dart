void main() {
  aritmatika();
  aritmatika2([2, 3, 4, 5]);
  y();
}

void aritmatika() {
  int num = 5;
  int p = 10 * 20 + (10 % 2) + num;
  print(p);
}

void aritmatika2(List<int> num2) {
  var x = 5;
  for (int i = 0; i < num2.length; i++) {
    var p = num2[i] * x;
    print(p);
  }
}

void y() {
  double x = 9.9;
 var y= x.floor();
  print(y);
}
