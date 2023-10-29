void main() {
  component myComponent = component();
  myComponent.loadComponent();
  myComponent.lowerText(["HALO PAK CIK" + " " + "LAGI APA"]);
  myComponent.listProperty();
  myComponent.greeting('rifky', myComponent.greeting2);
}

class component {
  List<dynamic> a = [];

  void loadComponent() {
    for (int x = 0; x < 10; x++) {
      a.add(x);
    }
    print(a);
  }

  void lowerText(List<String> s) {
    String result = "";
    for (String item in s) {
      result += item.toLowerCase();
    }
    print(result);
  }

  void mapOfObj(Map<dynamic, dynamic> x) {}
  void listProperty() {
    List<dynamic> a = [];
    a.add(['1', 2, '3', 4, ' 5']);
    List<dynamic> sublist = a[0].sublist(1);
    print(sublist);
  }

  void greeting(String name, dynamic callback) {
    print('hello $name');
    callback(); 
  }

  void greeting2() {
    print('how are you ?');
  }
}
