void main() {
  var b = BelajarKoleksi();
  b.spreadOperator();
  b.mapUp();
}

class BelajarKoleksi {
  void spreadOperator() {
    List<int> a = [1, 2, 3, 4, 5];
    var b = a.reversed;
    List<dynamic> c = ['ini adalah spread', ...b];
    print(c.length);
  }

  void mapUp() {
     Map<String, dynamic> a = {
    'name': 'rifky',
    'age': 19,
    'isStudent': true,
    'address': {
      'street': 'jalan bolak balik rt 5/rw 4',
      'city': 'tangerang'
    },
    'hobbies': ['ngoding', 'turu'],
  };

  print(a['greet']);
  }
}
