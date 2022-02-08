/* 10 ile 200 arasındaki asal sayıları gösteren
algoritma örneği
*/

void main() {
  print(primeNumbers(10, 200));
}

List<int> primeNumbers(int number1, int number2) {
  List<int> allprimeNumbers = [];

  for (number1; number1 < number2; number1++) {
    for (int n = 2; n < number2; n++) {
      if (number1 % n == 0) {
        break;
      }
      if ((n == number1 - 1)) {
        allprimeNumbers.add(number1);
      }
    }
  }
  return allprimeNumbers;
}
