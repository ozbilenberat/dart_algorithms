/* 1 ve 100 arasında iki katının bir fazlası 
beşe tam bölünebilen tam sayıları yazdıran algoritma
*/
void main() {
  for (int i = 0; i < 100; i++) {
    if ((i * 2 + 1) % 5 == 0) {
      print(i);
    }
  }
}
