void main(List<String> args) {
  var listOfInts = [1, 2, 3];
  var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
  print(listOfStrings);
  print(listOfStrings[1] == '#1');
}
