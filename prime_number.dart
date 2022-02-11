/* 10 ile 200 arasındaki asal sayıları gösteren
algoritma örneği
*/

void main() {
  print(primeNumbers(5, 200));
}

List<int> primeNumbers(int number1, int number2) {
  List<int> allprimeNumbers = [];

  for (int i = number1; i < number2; i++) {
    bool isPrime = true;

    for (int n = 2; n < i; n++) {
      if (i % n == 0) {
        isPrime = false;

        break;
      }
    }

    if (isPrime) {
      allprimeNumbers.add(i);
    }
  }
  return allprimeNumbers;
}
