void main() {
  a();
  whileLoop(10);
}

void a() {
  var u = List<List<int>>.generate(5, (index) => List<int>.filled(5, 0));

  for (var i = 0; i < u.length; i++) {
    for (var j = 0; j < u[i].length; j++) {
      u[i][j] = j;
    }
  }

  for (var row in u) {
    print(row);
  }
}

void whileLoop(int num) {
  int counter = 1;
  while (counter <= num) {
    if (counter % 2 == 0) {
      print('Genap :$counter');
    } else {
      print('\nGanjil :$counter');
    }
    counter++;
  }
}
