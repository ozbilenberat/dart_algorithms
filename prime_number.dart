/* 10 ile 200 arasındaki asal sayıları gösteren
algoritma örneği
*/

void main() {
  print(primenumbers(10, 200));
}

List<int> primenumbers(int sayi1, int sayi2) {
  List<int> allprimeNumbers = [];

  // ignore: unused_local_variable
  bool prime = true;
  for (sayi1; sayi1 < sayi2; sayi1++) {
    for (int n = 2; n < sayi1; n++) {
      if (sayi1 % n == 0) {
        prime = false;
        break;
      }
      if (prime = true && (n == sayi1 - 1)) {
        allprimeNumbers.add(sayi1);
      }
    }
  }
  return allprimeNumbers;
}
