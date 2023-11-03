// tempat latihan

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

// void main() {
//   downloadFile();
// }

// Future<void> downloadFile() async {
//   final dio = Dio();
//   try {
//     final response = await dio.get('https://file60.gofile.io/download/df7e6563-c37c-44ba-89d3-b42b43c59d88/Otakudesu.wiki_TateYuusha.S3--04_360p.mp4');
//     if (response.statusCode == 200) {
//       File file = File('file.mp4');
//       await file.writeAsBytes(response.data);
//       print('File downloaded successfully.');
//     }
//   } catch (e) {
//     print('err: $e');
//   }
// }

// Studi Kasus
// 1: Pengunduhan Gambar
// Anda diberikan tugas untuk membuat program Dart yang mengunduh beberapa gambar dari internet secara asinkron.
// Setiap gambar harus diunduh dalam satu proses asinkron. Anda harus menggunakan http package untuk mengunduh gambar tersebut.
// Setelah semua gambar telah diunduh, tampilkan pesan bahwa unduhan telah selesai.

// import 'dart:convert';
import 'dart:io';
// import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;

// void main() {
//   dataSet().then((_) {
//     print('file berhasil di donwload');
//   }).catchError((e) {
//     print('eror $e');
//   });
// }

// Future<void> dataSet() async {
//   // endpoint url
//   final String url = 'https://download-gambar/image/gambar'; // url nya sebagai contoh aja
//   List<String> img = [
//     'image-1',
//     'image-2',
//     'image-3',
//     'image-4',
//     'image-5',
//   ];
//   try {
//     for (var i in img) {
//       final response = await http.get(Uri.parse('$url/$i'));
//       if (response.statusCode == 200) {
//         List<int> u = response.bodyBytes;
//         File file = File('$i.jpg');
//         await file.writeAsBytes(u);
//         print('gambar $i : success didonwload');
//       } else {
//         throw Exception('server eror');
//       }
//     }
//   } catch (e) {
//     print('eror : $e');
//   }
// }

// Studi Kasus 2: Kalkulator Sederhana
// Buatlah kalkulator sederhana yang dapat melakukan operasi matematika dasar (penjumlahan, pengurangan, perkalian, pembagian) dengan menggunakan async/await.
//Program harus menerima input dari pengguna, menghitung hasilnya secara asinkron, dan menampilkan hasilnya.



// Future<void> main() async {
//   var calculator = MatematikaDasar();
//   List<String> operasi = ['perkalian', 'pertambahan', 'pengurangan', 'pembagian'];

//   int counter = 1;
//   print('Pilih operasi matematika !\n');
//   for (var i in operasi) {
//     print('$counter. $i');
//     counter++;
//   }

//   var pilihan = int.parse(stdin.readLineSync()!);
//   var result;

//   switch (pilihan) {
//     case 1:
//       print("Masukkan bilangan:");
//       var num1 = double.parse(stdin.readLineSync()!);
//       var num2 = double.parse(stdin.readLineSync()!);
//       result = calculator.perkalian(num1, num2);
//       break;
//     case 2:
//       print("Masukkan bilangan:");
//       var num1 = double.parse(stdin.readLineSync()!);
//       var num2 = double.parse(stdin.readLineSync()!);
//       result = calculator.pertambahan(num1, num2);
//       break;
//     case 3:
//       print("Masukkan bilangan");
//       var num1 = double.parse(stdin.readLineSync()!);
//       var num2 = double.parse(stdin.readLineSync()!);
//       result = calculator.pengurangan(num1, num2);
//       break;
//     case 4:
//       print("Masukkan bilangan");
//       var num1 = double.parse(stdin.readLineSync()!);
//       var num2 = double.parse(stdin.readLineSync()!);
//       result = calculator.pembagian(num1, num2);
//       break;
//     default:
//       print("Operasi yang Anda pilih tidak valid.");
//   }

//   if (result != null) {
//     print("Hasil: $result");
//   }
// }

// class MatematikaDasar {
//   double pertambahan(double num1, double num2) {
//     return num1 + num2;
//   }

//   double pengurangan(double num1, double num2) {
//     return num1 - num2;
//   }

//   double pembagian(double num1, double num2) {
//     if (num2 == 0) {
//       print('Tidak dapat membagi dengan nol.');
//       return 0;
//     } else {
//       return num1 / num2;
//     }
//   }

//   double perkalian(double num1, double num2) {
//     return num1 * num2;
//   }
// }



// Studi Kasus 3: Penerjemah Teks
// Buat program yang memungkinkan pengguna memasukkan teks dalam bahasa Inggris, dan kemudian program akan menerjemahkan teks tersebut ke bahasa lain (misalnya,
// Spanyol atau Prancis) dengan bantuan layanan penerjemahan online. Gunakan http package untuk mengirim permintaan ke layanan penerjemahan dan menampilkan hasilnya.