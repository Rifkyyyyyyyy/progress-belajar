void main() {
  filled();
  generate();
}

// filled

void filled() {
  String name = 'rifky';
  var a = List.filled(10, name);
  print(a);
}

// generate

void generate() {
  List.generate(10, (index) {
    var value = index + 1;
    if (value % 2 == 0) {
      print(value);
    }
  });
}


// 


