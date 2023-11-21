void sa() {
  var d = 3;
  try {
    var u = 0;
    var y = 1;
    var s = u + y < d ? 'eror woy' : 'ga eror';
    throw s;
  } catch (e) {
    print('eror with eror message $e');
  } finally {
    print('boleh la');
  }
}

void main() {
  sa();
}
