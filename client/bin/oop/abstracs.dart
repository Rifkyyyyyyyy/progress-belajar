abstract class Mantap {
  void tidur();
}

class Mantul extends Mantap {
  @override
  void tidur() {
    Future.delayed(Duration(seconds: 1), () {
      print('zzZZZzzz');
    });
  }
}

// void main() {
//   var s = Mantul();
//   s.tidur();

//   Future.delayed(Duration(seconds: 1), () {
//     print('ngorok');
//   });
// }

// huhu gapaham

abstract class Sample {
  void a();
  String name;

  Sample(this.name) {
    print('this $name');
  }
}

class SampleAnak extends Sample {
  SampleAnak(String name) : super(name);

  @override
  void a() {
    print('public static void main args str $name');
  }
}

// void main() {
//   var a = SampleAnak('1.mantap');
//   print(a.name);
//   var b = SampleAnak('1.Java');
//   b.a();
// }

abstract class Monster {
  String eatHuman() => 'Grr ... Deliciouse... yummy';
  String move();
}

class MonsterBerkepala extends Monster {
  String swim() => 'awkwkwkwkwk ... wkwkw ... whusss';
  @override
  String move() {
    return 'Whushhhhhh';
  }
}

class MonsterBerkepalaEmpat extends Monster {
  String jalan() => 'swinggg winggg ninu ninu';

  @override
  String eatHuman() {
    return 'sedet sedet asik';
  }

  @override
  String move() {
    return 'berrrrrrrrrrrrrr';
  }
}

abstract class BanyakKepala {
  String lari();
}

abstract class KepalaSeratus extends Monster implements BanyakKepala {
 @override
  String lari() => "Kucuk kucuk kucuk";

  @override
  String move() {
    return "jalan jalan nyantuy";
  }
}

void main() {
  List<Monster> monsters = [];
  monsters.add(MonsterBerkepala());
  monsters.add(MonsterBerkepalaEmpat());

  for (Monster n in monsters) {
    print(n.move());
  }
}



class Satu {

}

class Dua extends Satu {
  
}