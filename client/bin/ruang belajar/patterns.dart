void main() {
  a();
  b();
}

void a() {
  var numList = [1, 2, 3];
  var [a, b, c] = numList;
  print('bilangan a : $a');
  print('bilangan b : $b');
  print('bilangan c : $c');
}

void b() {
  List<Map<String, dynamic>> d = [
    {
      'name': 'rifky',
      'age': 19,
      'gender': 'man',
    }
  ];

    for (var item in d) {
    var name = item['name'];
    var age = item['age'];
    var gender = item['gender'];

    print('name : $name');
    print('age : $age');
    print('gender : $gender');
  }
}
