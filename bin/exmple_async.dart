void main() async {
  print('A');
  print(calculate());
  print('B');
}

Future<void> calculate() async {
  await Future<void>.delayed(Duration(seconds: 2), () => print('C'));
  print(1);
}
