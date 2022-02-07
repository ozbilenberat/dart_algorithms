void main() {
  var allNumbers = Iterable<int>.generate(100).toList();
  List<int> finalNumbers = [];
  for (int i = 0; i < allNumbers.length; i++) {
    var currentIndex = (allNumbers[i]);
    int performNumber = currentIndex * 2 + 1;
    if (performNumber % 5 == 0) {
      finalNumbers.add(currentIndex);
    }
  }
  print(finalNumbers);
}
