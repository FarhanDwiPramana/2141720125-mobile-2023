void main() {
  final List<String?> list = List<String?>.filled(5, null);
  list[1] = 'Farhan Dwi Pramana';
  list[2] = '2141720125';
  assert(list[1] == "Farhan Dwi Pramana");
  print(list[1]);
  assert(list[2] == "2141720125");
  print(list[2]);
}
