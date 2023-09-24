void main() {
  var gifts = {
    // Key: Value
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 1,
    'nama': 'Farhan Dwi Pramana',
    'nim': '2141720125'
  };

  var nobleGases = {
    2: 'helium',
    1: 'neon',
    18: 2,
    10: 'Farhan Dwi Pramana',
    12: '2141720125'
  };

  print(gifts);
  print(nobleGases);

  var mhs1 = Map<String, String>();
  gifts['first'] = 'partridge';
  gifts['second'] = 'turtledoves';
  gifts['fifth'] = 'golden rings';
  gifts['nama'] = 'Farhan Dwi Pramana';
  gifts['nim'] = '2141720125';

  var mhs2 = Map<int, String>();
  nobleGases[2] = 'helium';
  nobleGases[10] = 'neon';
  nobleGases[18] = 'argon';
  nobleGases[10] = 'Farhan Dwi Pramana';
  nobleGases[12] = '2141720125';
  print(gifts);
  print(nobleGases);
  print(mhs1);
  print(mhs2);
}
