import 'dart:io';

bool main(List<String> args) {
  int a, b, c;
  String input = stdin.readLineSync() ?? '';
  List<int> numbers = input.split(' ').map(int.parse).toList();
  a = numbers[0];
  b = numbers[1];
  c = numbers[2];

  int min, max;
  if (a > b) {
    min = b;
    max = a;
  } else {
    min = a;
    max = b;
  }

  if (c > max) {
    max = c;
  }

  if (c < min) {
    min = c;
  }
  print((a + b + c - max) == max);
  return (a + b + c - max) == max;
}
