import 'dart:io';
import 'dart:convert';

void main() {
  List<Map<String, dynamic>> y = [
    {'name': 'oyen', 'umur': 10},
    {'name': 'kak ros', 'umur': 19},
    {'name': 'udin', 'umur': 10},
    {'name': 'rifky', 'umur': 19},
    {'name': 'samsul', 'umur': 29}
  ];

  ap(y);
}

Future<void> ap(List<Map<String, dynamic>> a) async {
  try {
    final filePath = File('client/bin/sample.json');
    final jsonString = await filePath.readAsString();
    final jsonData = json.decode(jsonString);

    if (jsonData is List) {
      for (var i = 0; i < jsonData.length; i++) {
        var item = jsonData[i];
        if (item is Map<String, dynamic> && item.containsKey('name')) {
          print('index: ($i) nama: (${item['name']}) umur: (${item['umur']}),');
        }
      }

      for (var y in a) {
        if (jsonData.any((item) => item is Map && item['name'] == y['name'])) {
          jsonData.removeWhere((item) => item is Map && item['name'] == y['name']);
        }
      }

      jsonData.addAll(a);

      final newJsonString = json.encode(jsonData);
      await filePath.writeAsString(newJsonString);

      if (a.isNotEmpty) {
        await Future.delayed(Duration(seconds: 3), () {
          print('Loading...');
        }).then((_) {
          if (a.isNotEmpty || a.isEmpty) {
            Future.delayed(Duration(seconds: 1), () {
              print('data telah dimasukan');
            });
          }
        });
    
      } else {
            print('program selesai');
          }
    } else {
      print('Tidak ada array JSON.');
    }
  } catch (e) {
    print('Gagal membaca $e');
  }
}
