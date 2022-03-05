import 'dart:io';

void main() {
  stdout.write("Masukkan N : ");
  String? n = stdin.readLineSync();
  int input = int.parse(n!);

  if (input % 2 == 0) {
    final list = List.generate(
        input + 1, (i) => List.filled((input * 2) + 1, ' ', growable: false),
        growable: false);
    int inc = 1;
    int dec = input;

    for (int i = 0; i < input; i++) {
      for (int j = 0; j < (input * 2); j++) {
        if (j < input - i) {
          list[i][j] = inc.toString();
          inc++;
          if (inc > 4) {
            inc = 1;
          }
        } else if (j >= input + i) {
          list[i][j] = dec.toString();
          dec--;
          if (dec < 1) {
            dec = input;
          }
        }
      }
    }

    for (int i = 0; i < input; i++) {
      for (int j = 0; j < (input * 2); j++) {
        stdout.write(list[i][j]);
      }
      stdout.writeln();
    }
  } else {
    final arr = List.generate(
        input + 1, (i) => List.filled(input + 1, ' ', growable: false),
        growable: false);
    int num = 1;
    int co = 0;
    int swtch = -1;

    for (int i = 0; i < input; i++) {
      for (int j = 0; j < input; j++) {
        if (j >= (input / 2).floor() - co && j <= (input / 2).floor() + co) {
          if (swtch == -1) {
            arr[i][j] = num.toString();
            swtch = 1;
          } else {
            arr[i][j] = ' ';
            swtch = -1;
          }
        } else {
          arr[i][j] = '*';
        }
      }
      if (i >= (input / 2).floor()) {
        co--;
      } else {
        co++;
      }
      swtch = -1;
      num++;
      if (num > 9) {
        num = 1;
      }
    }

    for (int i = 0; i < input; i++) {
      for (int j = 0; j < input; j++) {
        stdout.write(arr[i][j]);
      }
      stdout.writeln();
    }
  }
}
