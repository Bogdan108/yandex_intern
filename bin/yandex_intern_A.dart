import 'dart:io';

class Ceil {
  int left = 0;
  int right = 0;
  int up = 0;
  int down = 0;
}

void main(List<String> arguments) {
  File input = File(
    "input.txt",
  );
  File output = File(
    "output.txt",
  );

  List<String> inputStr = input.readAsLinesSync();
  var strSize = inputStr[0].split(' ');
  int n = int.parse(strSize[0]);
  int m = int.parse(strSize[1]);

  List<String> gameBoardString =
      List.generate(n, (index) => inputStr[index + 1]);

  List<List<Ceil>> gameBoard =
      List.generate(n, (index) => List<Ceil>.generate(m, (index) => Ceil()));

  for (int i = 0; i < n; ++i) {
    for (int j = 0; j < m; ++j) {
      if (gameBoardString[i][j] != 'W') {
        if (i - 1 >= 0) {
          gameBoard[i][j].up += (gameBoard[i - 1][j].up +
              (gameBoardString[i - 1][j] == 'B' ? 1 : 0));
        }
        if (j - 1 >= 0) {
          gameBoard[i][j].left += (gameBoard[i][j - 1].left +
              (gameBoardString[i][j - 1] == 'B' ? 1 : 0));
        }
      }
    }
  }
  for (int i = n - 1; i >= 0; --i) {
    for (int j = m - 1; j >= 0; --j) {
      if (gameBoardString[i][j] != 'W') {
        if (i + 1 < n) {
          gameBoard[i][j].down += gameBoard[i + 1][j].down +
              (gameBoardString[i + 1][j] == 'B' ? 1 : 0);
        }
        if (j + 1 < m) {
          gameBoard[i][j].right += gameBoard[i][j + 1].right +
              (gameBoardString[i][j + 1] == 'B' ? 1 : 0);
        }
      }
    }
  }
  int maxSum = -1;
  int xMax = 0;
  int yMax = 0;
  for (int i = 0; i < n; ++i) {
    for (int j = 0; j < m; ++j) {
      if (gameBoardString[i][j] == '.') {
        int localSum = 0;
        localSum = gameBoard[i][j].right +
            gameBoard[i][j].left +
            gameBoard[i][j].up +
            gameBoard[i][j].down;
        if (localSum > maxSum) {
          xMax = i;
          yMax = j;
          maxSum = localSum;
        }
      }
    }
  }
  output.writeAsStringSync('${xMax + 1} ${yMax + 1}');
}
