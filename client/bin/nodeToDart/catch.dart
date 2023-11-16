import 'dart:convert';
import 'package:http/http.dart' as http;

void main() {
  nangkep();
  nambahin('kupli', 'sebelum ada kopi kuli takan beraksi');
}

final String url = 'http://localhost:29299/data';
final String url2 = 'http://localhost:29299/add';
final String url3 = 'http://localhost:29299/hapus';

Future<void> nangkep() async {
  try {
    var s = await http.get(Uri.parse(url));
    if (s.statusCode == 200) {
      var data = jsonDecode(s.body);
      print(data);
    }
  } catch (e) {
    print('err $e');
  }
}

Future<void> nambahin(String nama, String catatan) async {
  try {
    var h = {'content-Type': 'application/json'};
    var body = jsonEncode({'nama': nama, 'catatan': catatan});
    var respon = await http.post(Uri.parse(url2), headers: h, body: body);
    if (respon.statusCode == 201) {
      var responseData = jsonDecode(respon.body);
      print('Catatan berhasil ditambahkan: $responseData');
    } else {
      print('eror');
    }
  } catch (e) {
    print('eror $e');
  }
}

// Future<void> hapus(var id) async {
//   try {
//     var e  = await 
//   } catch (e) {

//     print('e $e');
//   }
// }
