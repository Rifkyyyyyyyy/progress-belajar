import 'dart:math' as math;

// void main() async {
//   final destroy = Destroy(damage: 100, poin: 100);
//   final build = Build(healing: 30, player: "Kucing");

//   print("Player's initial status:");
//   print("Damage: ${destroy.damage}");
//   print("Points: ${destroy.poin}");
//   print("Player: ${build.player}");
//   print("Healing: ${build.healing}");

//   destroy.player();
//   print("\nAfter the player's action:");
//   print("Damage: ${destroy.damage}");

//   await destroy.damageToPlayer();
//   print("\nSimulating damage to player asynchronously...");
//   print("Current damage: ${destroy.damage}");

//   await build.healPlayer();
//   print("\nHealing the player...");
//   print("Current points: ${destroy.poin}");
// }

// class Destroy {
//   int damage;
//   int poin;
//   bool value = false;

//   Destroy({
//     required this.damage,
//     required this.poin,
//   });

//   void player() {
//     if (!value) {
//       damage += math.Random().nextInt(10);
//     }
//   }

//   Future<void> damageToPlayer() async {
//     await Future.delayed(const Duration(seconds: 2));
//     damage += math.Random().nextInt(10);
//   }
// }

// class Build {
//   int healing;
//   String player;

//   Build({required this.healing, required this.player});

//   Future<void> healPlayer() async {
//     await Future.delayed(const Duration(seconds: 1));
//     healing = math.Random().nextInt(20);
//   }
// }

void main() async {
  try {
    BelajarAsync belajar = BelajarAsync(num: 0);
    await belajar.incrementEvery10Seconds(10); 
  } catch (err) {
    print('Error: $err');
  }
}

class BelajarAsync {
  int num;

  BelajarAsync({
    required this.num,
  });

  Future<void> incrementEvery10Seconds(int maxCount) async {
    int count = 0;

    while (count < maxCount) {
      await Future.delayed(Duration(seconds: 2));
      num += 1;
      count++;
      print('num: $num');

      if (count >= maxCount) {
        print('Maximum count reached.');
        break;
      }
    }
  }
}
