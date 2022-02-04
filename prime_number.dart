/* 10 ile 200 arasındaki asal sayıları gösteren
algoritma örneği
*/

void main() {
  print(primeNumbers(10, 200));
}

List<int> primeNumbers(int number1, int number2) {
  List<int> allprimeNumbers = [];

  // ignore: unused_local_variable
  bool prime = true;
  for (number1; number1 < number2; number1++) {
    for (int n = 2; n < number1; n++) {
      if (number1 % n == 0) {
        prime = false;
        break;
      }
      if (prime = true && (n == number1 - 1)) {
        allprimeNumbers.add(number1);
      }
    }
  }
  return allprimeNumbers;
}
