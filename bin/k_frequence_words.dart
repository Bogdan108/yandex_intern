import 'dart:collection';

class Solution {
  List<String> topKFrequent(List<String> words, int k) {
    Map<String, int> inpMap = {};
    for (int i = 0; i < words.length; ++i) {
      if (inpMap.containsKey(words[i])) {
        inpMap[words[i]] = (inpMap[words[i]]! + 1);
      } else {
        inpMap[words[i]] = 1;
      }
    }

    SplayTreeMap<int, List<String>> freqMap =
        SplayTreeMap<int, List<String>>.from({});
    for (var i in inpMap.entries) {
      if (freqMap.containsKey(i.value)) {
        freqMap[i.value]!.add(i.key);
      } else {
        freqMap[i.value] = [i.key];
      }
    }
    List<String> answer = [];

    for (var i in freqMap.entries) {
      answer.addAll(i.value..sort((a, b) => b.compareTo(a)));
    }

    return answer.reversed.toList().sublist(0, k);
  }
}

void main(List<String> args) {
  var per = Solution();

  print(per.topKFrequent(
      ["the", "day", "is", "sunny", "the", "the", "the", "sunny", "is", "is"],
      4));
}
