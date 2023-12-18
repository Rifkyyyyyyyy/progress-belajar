class UserDTO {
  String name;
  int age;

  UserDTO(this.name, this.age);
}

void main() {
  var userDto = UserDTO('pokemon', 25);
  greeting(userDto);
  print(newDto('samsul', 10));
}

void greeting(UserDTO user) {
  // Accessing properties of the UserDTO object
  print('${user.name} ${user.age}');
}

UserDTO newDto(String name, int age) {
  return UserDTO(name, age);
}

// void main() {
//   var p = [1, 2, 3];
//   var t = [4, 5, 6];
//   a([...p , ...t]);
// }

// void a(List s) {
//   print(s);
// }

// void main() {
//   h('');
// }

// void h(String s) {
//   if (s.isNotEmpty) {
//     print(s.trim().toUpperCase());
//   } else {
//     print('masukin kata woy'.toUpperCase());
//   }
// }

// Function makeAdd(int add) {
//   return (int i) => i + add;
// }


