/* 1den 100e kadar olan tek ve çift tam sayıların ayrı ayrı toplamını ve
ortalamasını gösteren algoritma örneği
*/

void main() {
  print(textCreate());
}

String textCreate() {
  List<int> numbers = [for (var i = 1; i <= 100; i++) i];
  List<int> oddNumbers = [];
  List<int> evenNumbers = [];
  int i = 0;
  int oddNumberSum = 0;
  int evenNumberSum = 0;

  while (i <= numbers.length) {
    if (i.isEven) {
      evenNumbers.add(i);
      evenNumberSum = i + evenNumberSum;
    } else if (i.isOdd) {
      oddNumbers.add(i);
      oddNumberSum = i + oddNumberSum;
    }
    i++;
  }
  double oddNumbersEqual = oddNumberSum / oddNumbers.length;
  double evenNumbersEqual = evenNumberSum / evenNumbers.length;
  String consoleMessage =
      'Tek sayıların toplamı: $oddNumberSum \nTek sayıların ortalaması: $oddNumbersEqual \nÇift sayıların Toplamı: $evenNumberSum \nÇift sayıların ortalaması: $evenNumbersEqual    ';
  return consoleMessage;
}
