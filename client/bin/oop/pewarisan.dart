// mempelajari sebuah class, dimana sebuah induk dapat mewariskan object ke anak-anak nya

void main() {
  var y = Anak();
  print('nilai title : ${y.title}');
  print('nilai num : ${y.num}');
}

class Induk {
  String? title;
  int? num;

  Induk({this.title, this.num});
}

class Anak extends Induk {
  Anak() : super(num: 10, title: 'mantap');
}
