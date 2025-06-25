void main(List<String> args) {
  List studentScores = [
    {
      "name": "Alice",
      "scores": [85, 90, 78],
    },
    {
      "name": "Bob",
      "scores": [88, 76, 95],
    },
    {
      "name": "Charlie",
      "scores": [90, 92, 85],
    },
  ];

  Map<String, double> averageScores = {};

  for (int i = 0; i < studentScores.length; i++) {
    List scores = studentScores[i]["scores"];
    int totalScore = 0;
    for (int j = 0; j < scores.length; j++) {
      totalScore += scores[j] as int;
    }
    double average = double.parse(
      (totalScore / scores.length).toStringAsFixed(2),
    );
    averageScores[studentScores[i]["name"]] = average;
    print(
      "Average for ${studentScores[i]["name"]}: ${average.toStringAsFixed(2)}",
    );
  }

  List<MapEntry<String, double>> sortedEntries = averageScores.entries.toList();
  sortedEntries.sort((a, b) => b.value.compareTo(a.value));

  Map<String, double> sortedMap = {};
  for (var entry in sortedEntries) {
    sortedMap[entry.key] = entry.value;
  }

  print(averageScores);

  print(sortedMap);
}
