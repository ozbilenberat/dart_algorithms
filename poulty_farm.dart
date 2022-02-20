/* ABC tavukçuluk işletmesi günlük yem, ilaç ve genel giderlerini (su, elektrik, 1 veteriner hekim ve 2
işçi) hesaplamak istemektedir. Giderler ve fiyatları aşağıdaki gibidir:
-Yem gideri tavuk başına 150 gram/gün, Yem fiyatı 20 TL/Kg,
-İlaç gideri tavuk başına 1 TL/gün,
-Elektrik tüketimi 50 Kwatt/gün, Elektrik fiyatı 0,5 TL/Kwatt,
-Su tüketimi 5 ton/gün, Su fiyatı 10 TL/Ton,
-Veteriner hekim ücreti 10 TL/gün ve ek olarak tavuk başına 1 TL,
-İşçi ücreti 75 TL/gün,
Girilen tavuk sayısına göre günlük toplam giderleri hesaplayan algoritmayı yazınız. */
import 'dart:io';

double electricPricePerKW = 0.5;
double waterPricePerTon = 10;
double seedPricePerKG = 20;

void main() {
  print('Çiftlikteki tavuk sayısını giriniz');
  int chicken = int.parse(stdin.readLineSync()!);

  print('Çiftlikte bulunan $chicken tavuk için günlük giderler toplamı:' +
      (perChickenExpense(chicken) + dailyRoutineExpense()).toString());
}

double perChickenExpense(int numberOfChickens) {
  double chickenSeedPrice = (150 / 1000 * seedPricePerKG) * numberOfChickens;
  int chickenVeterinaryExpense = 1 * numberOfChickens;
  int chickenMedicineExpense = 1 * numberOfChickens;

  double dailyExpensePerChicken =
      chickenSeedPrice + chickenVeterinaryExpense + chickenMedicineExpense;
  return dailyExpensePerChicken;
}

double dailyRoutineExpense() {
  double dailyVeterinary = 10;
  double dailyWater = 5 * waterPricePerTon;
  double dailyElectric = 50 * electricPricePerKW;
  double dailyWorker = 75;
  double routine = dailyVeterinary + dailyWater + dailyElectric + dailyWorker;
  return routine;
}
