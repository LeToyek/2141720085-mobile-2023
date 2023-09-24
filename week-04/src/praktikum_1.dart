void main(List<String> args) {
  final list = List<String?>.filled(5, null);
  list[1] = "Maulana Arif Wijaya";
  list[2] = "2141720085";

  assert(list[1] == "Maulana Arif Wijaya");
  assert(list[2] == "2141720085");

  print("Nama: ${list[1]} \nNIM: ${list[2]}");
  print("Semua list: $list");
}
