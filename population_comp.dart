/* Şanlıurfa’nın nüfusu 500.000, Gaziantep’in nüfusu 900.000’dir. Doğumlardan ve göçlerden dolayı
Şanlıurfa’nın nüfusu yılda %2.5 ve Gaziantep’in nüfusu ise yılda %1.4 oranında artıyor. Buna göre
Şanlıurfa’nın nüfusunun kaç yıl sonra Gaziantep’in nüfusunu geçeceğini bulan ve o andaki nüfuslarını
hesaplayan algoritmayı yazınız.*/

void main() {
  double sanliurfa = 500000;
  double gaziantep = 900000;
  int year;
  for (year = 1; sanliurfa <= gaziantep; year++) {
    sanliurfa = sanliurfa + sanliurfa * (2.5 / 100);
    gaziantep = gaziantep + gaziantep * (1.4 / 100);
  }
  print("Şanlıurfa, $year yıl sonra " +
      sanliurfa.round().toString() +
      " nufus sayısına ulaşarak " +
      gaziantep.round().toString() +
      " nufusu olacak olan Gaziantep'i geçecektir");
}
