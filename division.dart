//Verilen iki sayının birbirine tam olarak bölünüp bölünemeyeceğini bulan algoritmayı yazınız.
// (Büyük sayı küçük sayıya bölünecek, sayıların girişteki sıraları farklı olabilir.)
void main() {
  print(divide(7, 21));
}

String divide(int firstNumber, int secondNumber) {
  String message;
  int bigNumber;
  int divisor;
  if (firstNumber > secondNumber) {
    bigNumber = firstNumber;
    divisor = secondNumber;
  } else {
    bigNumber = secondNumber;
    divisor = firstNumber;
  }

  if (bigNumber % divisor == 0) {
    message = ('verilen iki sayı tam bölünebilir');
  } else {
    message = ('verilen iki sayi tam bölünemez');
  }
  return message;
}
