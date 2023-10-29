import 'dart:io';

void main() {
  Nest belajarNested = Nest();
  // belajarNested.nestDynamicFunction();
  belajarNested.nestedCondition();
  belajarNested.nestedLoop(5);
}

class Nest {
  dynamic nestDynamicFunction() {
    bool xs(int vy, int y) {
      if (vy >= y) {
        print('bilangan $vy lebih besar dari $y');
        return true;
      }
      return false;
    }

    void inputData() {
      stdout.write('Masukkan bilangan x: ');
      int x = int.parse(stdin.readLineSync()!);
      stdout.write('Masukkan bilangan y: ');
      int y = int.parse(stdin.readLineSync()!);

      bool result = xs(x, y);

      if (result) {
        print('Pernyataan benar');
      } else {
        print('Pernyataan salah');
      }
    }

    inputData();
  }

  void nestedCondition() {
    var x = 10;
    if (x != 10) {
      print('no');
    } else {
      if (x == 10) {
        print('yes');
      }
    }
  }

void nestedLoop(int height) {
    for (int i = 1; i <= height; i++) {
    for (int j = 1; j <= i; j++) {
      print('*');
    }
    print('');
  }
}
}
