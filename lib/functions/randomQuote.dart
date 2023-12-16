// GOAL: GET RANDOM QUOTE OR VOCAB FROM Quotes.dart
import "dart:math";
import "../data/Quotes.dart" as source;

List<String> randomQuote() {
  int min = 0;
  int max = source.quotesDictionary.length - 1;
  int rand = Random().nextInt(max);
  List<MapEntry<String, String>> l = source.quotesDictionary.entries.toList();
  String key = l[rand].key;
  String val = l[rand].value;

  //String non_russian_version;

  return [key, val];
}
