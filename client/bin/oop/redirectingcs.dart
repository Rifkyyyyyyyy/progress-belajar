// Redirecting nama cs

// Definisi kelas Sample dengan konstruktor, konstruktor bernama,
// dan konstruktor bernama baru 'mantap'.
class Sample {
  String name = 'kucing'; // Nilai default untuk atribut 'name'.
  int age; // Deklarasi atribut 'age'.

  // Konstruktor default untuk Sample, menginisialisasi 'name' dan 'age'.
  Sample(this.name, this.age);

  // Konstruktor bernama 'withAge' yang mengambil parameter 'umur',
  // menginisialisasi 'name' dengan 'no name' dan 'age' dengan 'umur' yang diberikan.
  Sample.withAge(int umur) : this('no name', umur);

  // Konstruktor bernama 'mantap' yang mengalihkan ke 'withName' dengan nama yang telah ditentukan.
  Sample.mantap() : this.withName('Mantap mas bro');

  // Konstruktor bernama 'withName' yang mengambil parameter 'nama',
  // menginisialisasi 'name' dengan 'nama' yang diberikan dan 'age' dengan 0.
  Sample.withName(String nama) : this(nama, 0);
}

// Fungsi utama di mana instansi-instansi kelas Sample dibuat dan dicetak.
void main() {
  // Membuat instansi 'a' menggunakan konstruktor default.
  var a = Sample('jokowan', 1);
  print(a.name); // Mencetak 'name' dari instansi 'a'.
  print(a.age);  // Mencetak 'age' dari instansi 'a'.

  // Membuat instansi 'b' menggunakan konstruktor bernama 'withAge'.
  var b = Sample.withAge(10);
  print(b.age);  // Mencetak 'age' dari instansi 'b'.
  print(b.name); // Mencetak 'name' dari instansi 'b'.

  // Membuat instansi 'c' menggunakan konstruktor bernama 'mantap'.
  var c = Sample.mantap();
  print(c.name); // Mencetak 'name' dari instansi 'c'.
  print(c.age);  // Mencetak 'age' dari instansi 'c'.
}
