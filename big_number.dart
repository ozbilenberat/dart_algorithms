import 'dart:io';

// Girilen 10 tamsayıdan en büyüğünü bulan algoritmayı yazınız.
void main() {
  int inputNumber = 0;
  int queue = 1;
  int numberCount = 0;
  int bigNumber = 0;
  while (numberCount < 10) {
    try {
      print('lütfen $queue. sayıyı giriniz');
      inputNumber = int.parse(stdin.readLineSync()!);

      if (inputNumber > bigNumber) {
        bigNumber = inputNumber;
      }

      queue++;
      numberCount++;
    } catch (e) {
      print('lütfen yalnızca tam sayı giriniz');
    }
  }
  print('Girilen sayılardan en büyüğü: $bigNumber');
}
