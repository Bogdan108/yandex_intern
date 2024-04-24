import 'dart:io';

int sumOfThreeDigits(int part) {
  int sum = 0;
  for (int i = 0; i < 3; ++i) {
    sum += part % 10;
    part ~/= 10;
  }
  return sum;
}

void main(List<String> arguments) {
  int x = int.parse(stdin.readLineSync() ?? '0');
  int leftPart = 0, rightPart = 0, leftSum = 0, rightSum = 0;

  do {
    x += 1;
    leftPart = x ~/ 1000;
    rightPart = x % 1000;
    leftSum = sumOfThreeDigits(leftPart);
    rightSum = sumOfThreeDigits(rightPart);
  } while (leftSum != rightSum);

  print(leftPart * 1000 + rightPart);
}
