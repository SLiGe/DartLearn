import 'dart:convert';
import 'dart:io' show stdin;

void main(List<String> args) {
  // NOTE: Be sure to use double quotes ("),
// not single quotes ('), inside the JSON string.
// This string is JSON, not Dart.
  var jsonString = '''
  [
    {"score": 40},
    {"score": 80}
  ]
''';

  var scores = jsonDecode(jsonString);
  print(scores is List);

  var firstScore = scores[0];
  print(firstScore is Map);
  print(firstScore['score'] == 40);
  var name = stdin.readLineSync();
  print('Hello,$name');
}
