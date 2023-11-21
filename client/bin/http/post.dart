import 'dart:convert';
import 'package:http/http.dart' as http;

void main() {
  var data = <Future>[];
  var meong = ['meng oyen', 'meng item', 'meng garong'];
  var catatan = ['suka whiskas', 'suka ribut', 'raja emeng'];
  for (var i = 0; i < meong.length; i++) {
    data.add(belajarMethodPost(i, meong[i], catatan[i]).then((_) {
      print('Done !');
    }));
  }
}

Future<void> belajarMethodPost(int index, String nama, String catatan) async {
  final url = 'http://localhost:29221/masukan';
  try {
    var headers = {'Content-Type': 'application/json'};

    var body = jsonEncode({'index': index, 'nama': nama, 'catatan': catatan});
    var response = await http.post(Uri.parse(url), headers: headers, body: body);

    if (response.statusCode == 200) {
      var responseData = jsonDecode(response.body);
      print('Catatan berhasil ditambahkan: $responseData');
    } else {
      print('Error ${response.statusCode}');
      print('Response body: ${response.body}');
    }
  } catch (e) {
    print('Error: $e');
  }
}
