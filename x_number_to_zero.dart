import 'dart:io';

/// 500’den 100’e kadar olan sayıları ekrana yan yana yazan algoritmayı yazınız.
/// Verilen sayıdan 1'e kadar olan sayıları ekrana yan yana ekrana yazdırma
void main() {
  List<int> numbers = [];
  int targetNumber;
  print('lütfen bir tamsayı giriniz');
  while (1 == 1) {
    try {
      targetNumber = int.parse(stdin.readLineSync()!);
      if (targetNumber is int) {
        //if kullanamdan içerideki while girmiyor
        while (targetNumber != 0) {
          numbers.add(targetNumber);
          targetNumber < 0 ? targetNumber++ : targetNumber--;
        }
        print(numbers.toString().replaceAll(RegExp(r'^\[|,|\]'), ''));
        break;
      }
    } on Exception {
      print('tam sayı girerek yeniden deneyin');
    }
  }
}
