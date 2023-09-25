void main(List<String> args) {
  var record = ('first', a: 2, b: 2, 'last');
  print(record);

  var (c, d) = (3, 2);
  print("before swap");
  print("a = $c, b = $d");
  var (a, b) = tukar((c, d));
  print("after swap");
  print("a = $a, b = $b");

  (String, int) mahasiswa;
  mahasiswa = ('Rizal', 2018);
  print(mahasiswa);

  var mahasiswa2 = ('first', a: 2, b: true, 'last');

  print(mahasiswa2.$1); // Prints 'first'
  print(mahasiswa2.a); // Prints 2
  print(mahasiswa2.b); // Prints true
  print(mahasiswa2.$2); // Prints 'last'
}

(int, int) tukar((int, int) record) {
  var (a, b) = record;
  return (b, a);
}
