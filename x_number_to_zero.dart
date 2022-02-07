import 'dart:io';

/// 500’den 100’e kadar olan sayıları ekrana yan yana yazan algoritmayı yazınız.
/// Verilen sayıdan 1'e kadar olan sayıları ekrana yan yana ekrana yazdırma
void main() {
  print("Enter your favourite number:");
  List<int> numbers = [];

  try {
    int targetNumber = int.parse(stdin.readLineSync()!);

    while (targetNumber != 0) {
      numbers.add(targetNumber);
      if (targetNumber > 0) {
        targetNumber--;
      } else {
        targetNumber++;
      }
    }
  } catch (e) {
    print('lütfen pozitif tamsayı giriniz');
  }

  print(numbers.toString().replaceAll(RegExp(r'^\[|,|\]'), ''));
}
