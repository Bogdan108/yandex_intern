class Solution {
  List<List<int>> diagonalSort(List<List<int>> mat) {
    List<List<int>> matrix =
        List.generate(mat.length + mat[0].length - 1, (index) => []);
    for (int i = 0; i < mat.length; ++i) {
      int j = 0;
      int k = i;
      while (k < mat.length && j < mat[i].length) {
        matrix[i].add(mat[k][j]);
        ++k;
        ++j;
      }
    }

    return mat;
  }
}

void main(List<String> args) {
  var sol = Solution();
  print(sol.diagonalSort([
    [3, 3, 1, 1],
    [2, 2, 1, 2],
    [1, 1, 1, 2]
  ]));
}
