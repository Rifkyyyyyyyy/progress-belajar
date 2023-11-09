void main() {
  pertama();
}

void pertama() {
  RegExp exp = RegExp(r'(\w+)');
  String str = 'parse my string';
  RegExpMatch? match = exp.firstMatch(str);
  print(match![0]);
}
