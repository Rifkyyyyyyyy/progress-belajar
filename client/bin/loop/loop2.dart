void main() {
  belajarIndex();
}

List<double> belajarIndex() {
  var t = [
    [29.0, 21.0, 20.0, 10.0, 23.0],
    [1.0, 3.0, 45.0, 7.0, 19.0],
    [1.9, 3.0, 45.0, 7.0, 19.0]
  ];

  do {
    t[1][0] = 5.3;
    print(t[1][0]);
  } while (t[1][0] * 2 == 42.0);
  // for (var i = 0; i < t.length; i++) {
  //   if (t[i] == t[0]) {
  //     var p = List<double>.from(t[i])..sort();
  //     print(p);
  //   }
  //   if (t[i] == t[1]) {
  //     var p = List<double>.from(t[i])..sort();
  //     print(p);
  //   }
  // }
  return [];
}

