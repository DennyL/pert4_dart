import 'dart:io';
import 'dart:convert';

void main() {
  stdout.writeln("Masukkan N : ");
  String? n = stdin.readLineSync();
  int input = int.parse(n!);

  if (input % 2 == 0) {
  } else {
    final arr = List.generate(
        input + 1, (i) => List.filled(input + 1, ' ', growable: false),
        growable: false);
    int num = 1;

    for (int i = 0; i < input; i++) {
      for (int j = 0; j < input; j++) {
        if (j == (input / 2).floor() && i % 2 == 0) {
          arr[i][j] = num.toString();
        } else {
          arr[i][j] = '*';
        }
      }
      num++;
    }

    for (int i = 0; i < input; i++) {
      for (int j = 0; j < input; j++) {
        stdout.write(arr[i][j]);
      }
      stdout.writeln();
    }
  }
}
