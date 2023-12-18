import 'dart:math';

void main() async {
  Random random = Random();
  await loadData().then((_) {
    Future.delayed(Duration(seconds: random.nextInt(2) + 2), () {
      print('data selesai dimuat !');
    });
  });
}

void contoh(String name, int age) {
  List<Map<String, dynamic>> data = [
    {"name": name, "age": age}
  ];
  for (var i = 0; i < data.length; i++) {
    print(
        'Hello my name is ${data[i]['name']} , And I ${data[i]['age']} Years old');
  }
}

Future<void> loadData() async {
  List<Map<String, dynamic>> dataName = [
    {"name": "samsul", "age": 20},
    {"name": "maulana", "age": 19},
    {"name": "udin", "age": 17},
    {"name": "petot", "age": 11}
  ];
  for (var i = 0; i < dataName.length; i++) {
    await Future.delayed(Duration(seconds: i + 1), () {
      if (dataName.isNotEmpty) {
        contoh(dataName[i]['name'], dataName[i]['age']);
      }
    });
  }
}
