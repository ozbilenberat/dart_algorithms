// . Üç haneli bir tamsayının birler, onlar ve yüzler hanesini bulan algoritmayı yazınız.drfdf

import 'dart:io';

void main() {
  String message = '';
  List<int> digitList = [];
  int inputNumber = 0;

  while (1 == 1) {
    try {
      print('lütfen bir ile yüz trilyon arasında bir sayi giriniz');
      inputNumber = int.parse(stdin.readLineSync()!);
      if (inputNumber > 0 && inputNumber < 1000000000000) {
        break;
      }
      // ignore: empty_catches
    } catch (e) {}
  }

  while (inputNumber > 0) {
    int finderMod = inputNumber % 10;
    digitList.add(finderMod);
    inputNumber = (inputNumber - finderMod) ~/ 10;
  }

  for (int digit = 0; digit < digitList.length; digit++) {
    switch (digit) {
      case (0):
        {
          message = 'Birler basamağı:';
          break;
        }
      case (1):
        {
          message = 'Onlar basamağı:';
          break;
        }
      case (2):
        {
          message = 'Yüzler basamağı:';
          break;
        }
      case (3):
        {
          message = 'Binler basamağı:';
          break;
        }
      case (4):
        {
          message = 'On binler basamağı:';
          break;
        }
      case (5):
        {
          message = 'Yüz binler basamağı:';
          break;
        }
      case (6):
        {
          message = 'Milyonlar basamağı:';
          break;
        }
      case (7):
        {
          message = 'On milyonlar basamağı:';
          break;
        }
      case (8):
        {
          message = 'Yüz milyonlar basamağı:';
          break;
        }
      case (9):
        {
          message = 'Milyarlar basamağı:';
          break;
        }
      case (10):
        {
          message = 'On Milyarlar basamağı:';
          break;
        }
      case (11):
        {
          message = 'Yüz Milyarlar basamağı:';
          break;
        }
    }
    print(message + digitList[digit].toString());
  }
}
