import 'dart:convert';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;

// void main() {
//   loadData();
// }

// Future<void> loadData() async {
//   try {
//     final data = await http.get(Uri.parse('https://example.com/api/data'));
//     if (data.statusCode == 200) {
//       var res = data.body;
//       var d = jsonDecode(res);
//       print(d);
//     }
//   } catch (e) {
//     print('err : $e');
//   }
// }



void main() {
  downloadFile();
}

Future<void> downloadFile() async {
  final dio = Dio();
  try {
    final response = await dio.get('https://file60.gofile.io/download/df7e6563-c37c-44ba-89d3-b42b43c59d88/Otakudesu.wiki_TateYuusha.S3--04_360p.mp4');
    if (response.statusCode == 200) {
      File file = File('file.mp4'); 
      await file.writeAsBytes(response.data);
      print('File downloaded successfully.');
    }
  } catch (e) {
    print('err: $e');
  }
}

