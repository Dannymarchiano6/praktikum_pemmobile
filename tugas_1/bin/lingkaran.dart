import 'dart:math';

void main(List<String> arguments) {
  double radius = 5.0;
  double keliling, luas;

  keliling = 2 * pi * radius;

  luas = pi * pow(radius, 2);

  print('Keliling dengan radius $radius adalah $keliling');
  print('Luas lingkaran dengan radius $radius adalah $luas');
}
