void main() {
  Set satu = {1, 2, 3, 4};
  print(satu.length);
  if (satu.isNotEmpty) {
    for (var i in satu) {
      print(i * 2 + (i));
    }
  }
}
