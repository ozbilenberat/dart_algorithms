import 'dart:io';

void main() {
  int tam = 0;
  int ondalik = 0;
  print(
      'lütfen basamak sayılarını öğrenmek istediğiniz ondalık sayıyı giriniz');
  String sayi = stdin.readLineSync()!;

  for (int i = 0; i < sayi.length; i++) {
    if (sayi[i] != '.') {
      tam++;
    } else {
      break;
    }
  }
  ondalik = sayi.length - tam - 1;

  print(ondalik);
  print(tam);
}
