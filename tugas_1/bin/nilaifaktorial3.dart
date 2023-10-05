import 'dart:math';

void main(List<String> arguments) {
  int angka1 = 10;
  int angka2 = 20;
  int angka3 = 30;

  int faktorial1 = hitungfaktorial(angka1);
  int faktorial2 = hitungfaktorial(angka2);
  int faktorial3 = hitungfaktorial(angka3);

  print("faktorial dari $angka1 adalah $faktorial1");
  print("faktorial dari $angka2 adalah $faktorial2");
  print("faktorial dari $angka3 adalah $faktorial3");
}

int hitungfaktorial(int n) {
  if (n == 0) {
    return 1;
  }
  int faktorial = 1;
  for (int i = 1; 1 <= n; i++) {
    faktorial *= i;
  }
  return faktorial;
}
