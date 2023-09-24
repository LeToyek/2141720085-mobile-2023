void main(List<String> args) {
  latihan2();
}

void latihan1() {
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  print(halogens);
}

void latihan2() {
  var names1 = <String>{};
  Set<String> names2 = {}; // This works, too.
  var names3 = {}; // Creates a map, not a set.

  print(names1);
  print(names2);
  print(names3);
}

void latihan2After() {
  var names1 = <String>{};
  Set<String> names2 = {}; // This works, too.

  names1.add("Maulana Arif Wijaya");
  names1.add("2141720085");

  names2.addAll(names1);

  print("result names1: $names1");
  print("result names2: $names2");
}
