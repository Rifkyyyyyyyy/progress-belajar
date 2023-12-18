void main() {
  var a = [1 , 2 , 3 ,4 ,5 ,6 , 7 , 8 , 9 , 10];
  for (var i = 0; i < a.length; i++) {
    if (i % 2 == 0) {
      a.remove(a[i]);
      print(a[i]);
    }
  }
}
