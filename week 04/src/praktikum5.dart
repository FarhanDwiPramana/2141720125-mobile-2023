void main() {
  var record = (3, 4);
  print(record);
  print(tukar(record));

  // Record type annotation in a variable declaration:
  (String, int) mahasiswa = ('Farhan Dwi Pramana', 2141720125);
  print(mahasiswa);

  var mahasiswa2 = ('first', a: 2, b: 2141720125, 'Farhan Dwi Pramana');

  print(mahasiswa2.$1); // Prints 'first'
  print(mahasiswa2.a); // Prints 2
  print(mahasiswa2.b); // Prints true
  print(mahasiswa2.$2); // Prints 'last'
}

(int, int) tukar((int, int) record) {
  var (a, b) = record;
  return (b, a);
}
