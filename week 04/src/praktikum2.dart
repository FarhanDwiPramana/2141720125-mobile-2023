void main() {
  var halogens = {'fluorine', 'chlorine', ' bromine', 'iodine', 'astatine'};
  print(halogens);

  var names1 = <String>{};
  Set<String> names2 = {}; // This works, too.
  var names3 = {}; //Creates a map, not a set.

  names1.add('Farhan Dwi Pramana');
  names1.add('2141720125');
  names2.addAll(['Farhan Dwi Pramana', '2141720125']);
  print(names1);
  print(names2);
  print(names3);
}
