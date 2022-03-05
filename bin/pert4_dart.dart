import 'dart:io';

void main() {
  stdout.writeln("Masukkan N : ");
  String? n = stdin.readLineSync();
  int input = int.parse(n!);

  if (input % 2 == 0) {
  } else {
    for (int i = 0; i < input; i++) {}
  }
}
