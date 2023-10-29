void main() {
  final dynamicObj = Dynamic();
  dynamicObj.endpoint(); // Memproses semua fungsi sekaligus
}

class Dynamic {
  List<int> name = [1, 2, 3, 4, 5];
  List<int> arr = [];

  int loop = 10;
  Map data = {
    'name': 'Rifky',
    'age': 19,
    'andress': () => {
          "city": "tanggerang",
          "province": "banten",
          "wni": true,
          "detail": "Jl kh mustofa rw 05/03"
        }
  };

  void xy() {
    List<dynamic> x = [];
    x.addAll([1, '2 ', 3, '4', 5]);
    for (int s = 0; s < x.length; s++) {
      if (s == 3) {
        x[s] = 'halo';
      }
      print(x[s]);
    }
  }

  int x(int s, int a) {
    int xs = s + a;
    print(xs);
    return xs;
  }

//  Map <Dynamic> dataDinamik () {
  
//  }

  void defaultList() {
    if (name.length == 5) {
      name[2] = 4;
    }

    for (var c in name) {
      print('List data: $c ');
    }
    print('\n');
  }

  void objDetail() {
    print('Object detail:');
    _printMap(data, '');
    print('\n');
  }

  void _printMap(Map map, String indent) {
    map.forEach((key, value) {
      if (value is Map) {
        print('$indent$key: {');
        _printMap(value, '$indent  ');
        print('$indent}');
      } else if (value is Function) {
        final result = value();
        print('$indent$key: $result');
      } else {
        print('$indent$key: $value');
      }
    });
  }

  void arrProperties() {
    for (int i = 0; i < 10; i++) {
      arr.add(i);
    }
    arr.forEach((index) {
      print('index of : $index');
    });
    print('\n');
  }

  void loopInteration() {
    for (var c in List.generate(loop, (index) => index)) {
      print('List data : $c');
    }
  }

  void endpoint() {
    defaultList();
    objDetail();
    arrProperties();
    loopInteration();
    xy();
    x(10, 20);
  }
}
