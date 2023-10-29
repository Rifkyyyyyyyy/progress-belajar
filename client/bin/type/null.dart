// void main() {
//   int? a = 1;
//   var c; 

//   if (a == null) {
//     print('Variabel a adalah nullable (null safety).');
//   } else {
//     print('Variabel a adalah non-nullable.');
//   }

//   if (c == null) {
//     print('Variabel c adalah nullable (null safety).');
//   } else {
//     print('Variabel c adalah non-nullable.');
//   }
// }


void main() {
  List<String> aListOfStrings = ['one', 'two', 'three'];
  List<String>? aNullableListOfStrings; //  tanda tanya (?) untuk nullable
  List<String?> aListOfNullableStrings = ['one', null, 'three']; 

  print('aListOfStrings is $aListOfStrings.');
  print('aNullableListOfStrings is $aNullableListOfStrings.'); 
  print('aListOfNullableStrings is $aListOfNullableStrings.');
}
