void main() {
  convertData newConvert = convertData();
  newConvert.convert();
}

class convertData {
  void convert() {
    String num = '10';
    var x = int.parse(num);
    print(x.runtimeType);
    var y = double.parse(num);
    print(y.runtimeType);

    int sx = 10;
    var kl = sx.toString();
    print(kl.runtimeType);

    String ok = '';
    var ks = ok.length > 10 ? 'yes' : 'no';
    print(ks);
    print(ok.isEmpty ? 'yes' : 'no');
  }
}
