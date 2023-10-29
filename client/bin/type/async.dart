// import 'dart:convert';
// import 'package:http/http.dart' as http;

// void main() {
//   var b = PokeApi();
//   b.getData();
// }

// class PokeApi {
//   String endpoint = 'http://localhost:3000/api/pokemon';

//   Future<void> getData() async {
//     try {
//       final response = await http.get(Uri.parse(endpoint));
//       if (response.statusCode == 200) {
//         // Corrected status code check
//         String res = response.body;
//         var data = jsonDecode(res);
//         print(data);
//       } else {
//         print('eror ${response.statusCode}');
//       }
//     } catch (err) {
//       print('error : $err');
//     }
//   }
// }

// void main() {
//   BelajarAsync belajar = BelajarAsync();
//   belajar.createOrder().then((result) {
//     print(result);
//   });
// }

// class BelajarAsync {
//   Future<String> createOrder() async {
//     return 'Your order is ${await dataUser()}';
//   }

//   Future<String> dataUser() async {
//     await Future.delayed(
//       const Duration(seconds: 2),
//       () => 'Burger',
//     );
//     return 'Burger';
//   }
// }

// import 'dart:async';

// void main() async {
//   final belajarAsync = BelajarAsync();
//   await belajarAsync.loadData().then((_) => null);
//   print(belajarAsync.a);
// }

// class BelajarAsync {
//   List<dynamic> a = [];
//   int counter = 1;

//   Future<void> loadData() async {
//     while (counter <= 10) {
//       a.add(counter);
//       counter++;
//     }
//   }
// }

// void main() {
//   var b = BelajarAsync();
//   b.orderMsg();
// }

// class BelajarAsync {
//   Future<void> orderMsg() async {
//     int counter = 1;
//     double total = 0;
//     double cash = 150.00;

//     try {
//       print('------------------------');
//       print('Warung makan Jadoel');
//       print('------------------------');
//       var order = await orderan([
//         {'item': 'ayam geprek', 'price': 15.000},
//         {'item': 'martabak', 'price': 20.000},
//         {'item': 'ayam pak mail', 'price': 18.000},
//         {'item': 'nasi lemak kak ros', 'price': 12.000},
//         {'item': 'air putih amazon', 'price': 5.000}
//       ]);

//       print('Kamu memesan :');
//       for (var item in order) {
//         print('Item $counter : ${item['item']} - Rp ${item['price']}');
//         total += item['price'];
//         counter++;
//       }

//       print('------------------------');
//       print('Total pembayaran: Rp $total');
//       print('bayar (cash) : $cash');
//         var change = cash - total;
//         print('Kembali : $change');

//     } catch (e) {
//       print('Error: $e');
//     }
//   }

//   Future<List<Map<String, dynamic>> > orderan(List<Map<String, dynamic>> pesanan) async {
//     List<Map<String, dynamic>> a = [];
//     a.addAll(pesanan);
//     await Future.delayed(Duration(seconds: 4));
//     return a;
//   }
// }

// void main() {
//   var b = BelajarAsync();
//   b.a();
// }

// class BelajarAsync {
//   Future<void> a() async {
// var text = 'Halo,selamat pagi';
//     List<int> r = [];
//     var currentIndex = 0;
//     while (currentIndex < text.length) {
//       var currentChar = text[currentIndex];
//       print(currentChar);
//       currentIndex += 1;
//       r.add(currentIndex);
//       await Future.delayed(Duration(seconds: 1));
//     }
//     print('index saat ini : $r');
//   }
// }

// nested async

// void main() {
//   var aw = BelajarAsync();
//   aw.a();
// }

// class BelajarAsync {
//   Future<void> a() async {
//     print('fungsi a dimulai....');
//     await Future.delayed(Duration(seconds: 2), () => b());
//     print('fungsi a telah selesai !');
//   }

//   Future<void> b() async {
//     print('fungsi b dimulai....');
//     await Future.delayed(Duration(seconds: 1), () => c());
//     print('fungsi b telah selesai !');
//   }

//   Future<void> c() async {
//     String w = 'program sudah berada di akhir !\n';
//     print('fungsi c dimulai.....\n');
//     print(await Future.delayed(Duration(seconds: 1), () => w));
//     print('fungsi c telah selesai !');
//   }
// }

// eror handeling

// void main() {
//   var a = BelajarAsync();
//   var y = 1;
//   a.a();
//   a.s(y);
// }

// class BelajarAsync {
//   Future<void> a() async {
//     int num = 10;
//     try {
//       if (num > 20) {
//         throw Exception('Hasilnya salah!');
//       }
//     } catch (e) {
//       print('Error: $e');
//       rethrow;
//     } finally {
//       print('gw taro di sini aja');
//     }
//   }

//   void s(int num) {
//     try {
//       if (num <= 10) {
//         throw Exception('Error');
//       }
//     } catch (e) {
//       print('Error caught: $e');
//     } finally {
//       print('gw taro disini aja');
//     }
//   }
// }

