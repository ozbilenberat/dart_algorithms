/* Rastgele girilen bir rasyonel sayının ondalık kısmının ve tam kısmının hane sayısını bulan
sayının tam kısmının yüzler hanesindeki değerin küpünün bir tam kare olup 
olmadığını bulan algoritmayı yazınız.
*/

import 'dart:io';
import 'dart:math';

void main() {
  String squareCheckMessage = '';
  int wholeDigit = 0;
  int decimalDigit = 0;

  List<String> tempList = [];
  print(
      'lütfen basamak sayılarını öğrenmek istediğiniz ondalık sayıyı giriniz');
  String inputNumber = stdin.readLineSync()!;

  for (int i = 0; i < inputNumber.length; i++) {
    if (inputNumber[i] != '.') {
      tempList.add(inputNumber[i]);
      wholeDigit++;
    } else {
      break;
    }
  }
  decimalDigit = inputNumber.length - wholeDigit - 1;
  List<int> digitListAsInt =
      tempList.reversed.map((data) => int.parse(data)).toList();
  int hundreds = digitListAsInt[2];
  var g = pow(hundreds, 3);

  for (int i = 1; i <= hundreds / 2 + 1; i++) {
    if (hundreds == i * i) {
      squareCheckMessage = '($g) tam karedir';
      break;
    } else {
      squareCheckMessage = '($g) tam kare değildir';
    }
  }

  print(
      'Girilen sayının ondalık kısmının basamak sayısı: $decimalDigit \nGirilen sayının tam kısmının basamak sayısı:$wholeDigit \nGirilen sayının yüzler basamağının küpü$squareCheckMessage');
}
