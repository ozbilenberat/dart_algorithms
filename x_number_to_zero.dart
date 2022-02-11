import 'dart:io';

/// 500’den 100’e kadar olan sayıları ekrana yan yana yazan algoritmayı yazınız.
/// Verilen sayıdan 1'e kadar olan sayıları ekrana yan yana ekrana yazdırma
void main() {
  List<int> numbers = [];
  int targetNumber = 0;

  while (1 == 1) {
    try {
      print('lütfen bir tamsayı giriniz');
      targetNumber = int.parse(stdin.readLineSync()!);
      break;
      // ignore: empty_catches
    } catch (e) {}
  }
  while (targetNumber != 0) {
    numbers.add(targetNumber);
    targetNumber < 0 ? targetNumber++ : targetNumber--;
  }
  print(numbers.toString().replaceAll(RegExp(r'^\[|,|\]'), ''));
}
