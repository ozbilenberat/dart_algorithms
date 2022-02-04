// ignore: file_names
void main() {
  int evenNumberSum = 0;
  int evenTransCount = 0;
  int oddNumberSum = 0;
  int oddTransCount = 0;

  for (int i = 1; i <= 100; i++) {
    if (i.isEven) {
      evenTransCount++;
      evenNumberSum = i + evenNumberSum;
    } else if (i.isOdd) {
      oddTransCount++;
      oddNumberSum = oddNumberSum + i;
    }
  }

  print('Tek sayıların toplamı: $oddNumberSum \nTek sayıların ortalamsı: ' +
      (oddNumberSum / oddTransCount).toString());
  print('Çift sayıların toplamı: $evenNumberSum \nÇift sayıların ortalamsı: ' +
      (evenNumberSum / evenTransCount).toString());
}
