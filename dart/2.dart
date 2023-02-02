import 'dart:io';

void main() {
  List a = [10, 20, 30, 40, 50];
  int larg = 0;

  for (int i = 0; i < 5; i++) {
    if (a[i] > larg) larg = a[i];
  }
  print("larg number : $larg");
}
