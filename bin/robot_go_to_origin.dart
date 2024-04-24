class Solution {
  bool judgeCircle(String moves) {
    int vertical = 0, horizontal = 0;
    // 0 - up,down, 1 - right,left
    for (int i = 0; i < moves.length; ++i) {
      switch (moves[i]) {
        case 'U':
          ++vertical;
          break;
        case 'R':
          ++horizontal;
          break;
        case 'L':
          --horizontal;
          break;
        case 'D':
          --vertical;
          break;
      }
    }

    return vertical == 0 && horizontal == 0;
  }
}
