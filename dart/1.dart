import 'dart:io';

void main() {
  List a = [-4, -1, 0, 1, -9];

  a.forEach((e) {
    if (e < 0) {
      print(e);
    }
  });
}
