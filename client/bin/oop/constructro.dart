class Sample {
  String name;
  int? age;

  Sample.biodata(this.name, this.age);
}

void main() {
  var a = Sample.biodata('rifky', 21);
  print('hello my name ${a.name}, and i ${a.age} years old');

  var b = Sample.biodata('meong', 18);
  print('hello my name ${b.name}, and i ${b.age} years old');
}
