// Adı ve fiyatı verilen bir ürünün %18 KDV’li fiyatını hesaplayan algoritmayı yazınız.

import 'dart:io';

void main() {
  double taxRate = 0.18;
  List<dynamic> lst = [];
  String inputData;
  do {
    print('Lütfen ürün ismini ve fiyatını giriniz');
    inputData = stdin.readLineSync()!;
    lst = inputData.split(" ");
    String name = lst[0];
    try {
      double price = double.parse(lst[1]);
      double priceWithTax = price + price * taxRate;
      print('"$name" İSİMLİ ÜRÜNÜN KDV DAHİL FİYATI: $priceWithTax');
      lst.clear();
    } catch (e) {
      print('Ürün bilgilerini kontrol ederek yeniden deneyin');
    }
  } while (inputData != 'Exit');
}
