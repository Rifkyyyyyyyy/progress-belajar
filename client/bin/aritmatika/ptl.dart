int apalah(int a, int b) {
  var d = (a * b > 10) ? a - b : b - a;

  while (d > 11 || d > (10 / 2)) {
    if (d == a && d == b) {
      return b + a * (b + a);
    }
    d -= 5;
  }

  return d;
}

// void main() {
//   var result = apalah(110, 190);
//   print(result);
// }

void main() {
  int n = 112;
  print(n / 10 );
}
