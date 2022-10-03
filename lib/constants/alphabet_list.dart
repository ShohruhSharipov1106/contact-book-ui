List<String> alphabet() {
  String alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
  List alphabetsplitted = alphabet.split("");
  List<String> alphabetList = [];
  for (var item in alphabetsplitted) {
    alphabetList.add(item);
  }
  return alphabetList = alphabetList..add("#");
}
