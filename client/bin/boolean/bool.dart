void main() {
  abc();
}

void abc() {
  var u = 10;
  var y = u == 10 && u == 9 ? 'yes' : 'no';
  var i = u != 9 || u == 10 ? 'yes' : 'no';
  var o = u >= 10 && u <= 8 ? 'yes' : 'no';
  var t = u % 2 == 0 ? 'yes' : 'no';
  var q = 2 + (2 * 4) == u ? 'yes' : 'no';
  var w = u.isNaN ? 'yes' : 'no';
  

  print('1 : $y');
  print('2 : $i');
  print('3 : $o');
  print('4 : $t');
  print('5 : $q');
  print('6 : $w');

  if (u != 9) {
    print('yes');
  } else {
    print('no');
  }
}
