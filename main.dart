void main() {
  List<String> string = [
    "This is a really really cool experiment really",
    "cute little experiment",
    "will it work maybe it will work do you think it will it will"
  ];
  for (int i = 0; i < string.length; i++) {
    List<String> words = string[i].split(" ");
    Map<String, int> wordCount = {};
    for (String word in words) {
      if (wordCount.containsKey(word)) {
        wordCount[word] = wordCount[word]! + 1;
      } else {
        wordCount[word] = 1;
      }
    }
    int maxFrequency = 0;
    for (var word in wordCount.values) {
      if (word > maxFrequency) {
        maxFrequency = word;
      }
    }
    List<String> mostRepeatedWords = [];
    for (var word in wordCount.entries) {
      if (word.value == maxFrequency) {
        mostRepeatedWords.add(word.key);
      }
    }
    print(
        "Line number ${i + 1}: The words ${mostRepeatedWords.join(", ")} appears $maxFrequency times");
  }
}
