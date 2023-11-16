// mempelajari sebuah class, dimana sebuah induk dapat mewariskan object ke anak-anak nya

// void main() {
//   var y = Anak();
//   print('nilai title : ${y.title}');
//   print('nilai num : ${y.num}');
// }

class Induk {
  String? title;
  int? num;

  Induk({this.title, this.num});
}

class Anak extends Induk {
  Anak() : super(num: 10, title: 'mantap');
}

class Pertama {
  String name = 'King emeng';
  List<String> ofEmeng = [];
}

class Kedua extends Pertama {
  void rajaNgeong(List<String> emeng) {
    for (var i = 0; i < emeng.length; i++) {
      ofEmeng.add(emeng[i]);
      print('Hello ${ofEmeng[i]}');
    }
  }

  void king() {
    print('Hello $name');
  }
}

// void main() {
//   List<String> nama = [
//     'kucing oyen',
//     'kucing gayong',
//     'bapak kucing',
//     'emak kucing'
//   ];
//   var a = Kedua();
//   a.king();
//   a.rajaNgeong(nama);
// }

void main() {
  var a = Keren();
  a.greeting();
  a.greeting2();
}

class Mantap {
  String name = 'rifky';
  int age = 18;
  void greeting() {
    print('hello $name , age : $age');
  }
}

class Keren extends Mantap {
  void greeting2() {
    name = 'kupli';
    print('hello $name');
  }
}
