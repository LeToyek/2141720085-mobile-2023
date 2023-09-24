void main(List<String> args) {
  latihan1n2();
}

void latihan1n2() {
  var gifts = {
    // Key:    Value
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 1
  };

  var nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 2,
  };

  print(gifts);
  print(nobleGases);

  // Latihan 3

  var mhs1 = Map<String, String>();
  gifts['first'] = 'partridge';
  gifts['second'] = 'turtledoves';
  gifts['fifth'] = 'golden rings';

  var mhs2 = Map<String, String>();
  nobleGases[2] = 'helium';
  nobleGases[10] = 'neon';
  nobleGases[18] = 'argon';

  print("===Setelah Penambahan Data===");

  gifts['nama'] = 'Maulana Arif Wijaya';
  gifts['nim'] = '2141720085';

  nobleGases[19] = 'Maulana Arif Wijaya';
  nobleGases[20] = '2141720085';

  mhs1['nama'] = 'Maulana Arif Wijaya';
  mhs1['nim'] = '2141720085';

  mhs2['nama'] = 'Maulana Arif Wijaya';
  mhs2['nim'] = '2141720085';

  print("gifts = $gifts");
  print("nobleGases = $nobleGases");
  print("mhs1 = $mhs1");
  print("mhs2 = $mhs2");
}
