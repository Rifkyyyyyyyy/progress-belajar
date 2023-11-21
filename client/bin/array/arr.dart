class Game {
  String? playerName;
  double? playerUid;
  int? level;
  String? monster;
  String? monsterType;
  double? damage;
  double? healing;

  Game({
    this.playerName,
    this.level,
    this.monster,
    this.monsterType,
    this.healing,
    this.damage,
    this.playerUid,
  });
}

class Player extends Game {
  Player({String? playerName, double? playerUid, int? level, double? healing})
      : super(
          playerName: playerName,
          playerUid: playerUid,
          level: level,
          healing: healing,
        );

  List<Map<String, dynamic>> dataPlayer() {
    return [
      {
        'playerName': playerName,
        'Uid': playerUid,
        'Level': level,
        'damageToPlayer': damage,
        'healingToPlayer': healing,
      },
    ];
  }
}

class Monster extends Game {}

void main() {
  Player player = Player(
      playerName: 'Kucing', playerUid: 12271212.00, level: 5, healing: 20);
  Monster monster = Monster();

  List<Map<String, dynamic>> listPlayer = player.dataPlayer();
  List<Map<String, dynamic>> listMonster = [
    {
      'monsterName': monster.monster,
      'monsterType': monster.monsterType,
      'damageToPlayer': 15,
      'healingToPlayer': 0,
    },
  ];

  List<Map<String, dynamic>> combinedList = [...listPlayer, ...listMonster];
  print(combinedList);
}
