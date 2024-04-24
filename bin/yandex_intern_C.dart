import 'dart:io';

class callObject {
  String phone;
  int order;
  callObject(this.order, this.phone);

  @override
  bool operator ==(Object other) =>
      other is callObject &&
      other.runtimeType == runtimeType &&
      other.order == order;

  @override
  int get hashCode => order.hashCode;
}

void main(List<String> arguments) {
  // File input = File(
  //   "input.txt",
  // );
  // File output = File(
  //   "output.txt",
  // );
  // List<String> inputStr = input.readAsLinesSync();
  // var strSize = inputStr[0].split(' ');
  // int m = int.parse(strSize[0]);
  // int n = int.parse(strSize[1]);

  Map<String, int> callMap = {};
  List<String> callList = [];

  var strSize = (stdin.readLineSync() ?? '0 1').split(' ');
  int m = int.parse(strSize[0]);
  int n = int.parse(strSize[1]);

  int favSize = 0;

  for (int i = 0; i < n; ++i) {
    String phoneCall = stdin.readLineSync() ?? 'W';
    if (callMap.containsKey(phoneCall)) {
      callList.removeAt(callMap[phoneCall]!);
      callList.add(phoneCall);
      callMap = {for (var item in callList) item: callList.indexOf(item)};
    } else {
      if (favSize < m) {
        callMap[phoneCall] = favSize;
        callList.add(phoneCall);
        favSize += 1;
      } else {
        callList.removeAt(0);
        callList.add(phoneCall);
        callMap = {for (var item in callList) item: callList.indexOf(item)};
      }
    }
  }

  for (int i = callList.length - 1; i >= 0; --i) {
    print(callList[i]);
  }

  for (int i = 0; i < m - callList.length; ++i) {
    print("<Empty>");
  }

  // for (int i = callList.length - 1; i >= 0; --i) {
  //   output.writeAsStringSync(callList[i]);
  // }
}
