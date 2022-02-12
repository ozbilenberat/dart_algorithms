// Verilen bir sayının faktöriyelini hesaplayan algoritmayı yazınız
void main() {
  print(fact(4));
}

int fact(int number) {
  if (number > 0) {
    return number * fact(number - 1);
  } else {
    return 1;
  }
}
