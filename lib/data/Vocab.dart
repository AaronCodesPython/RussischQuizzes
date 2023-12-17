import 'dart:io';
import 'package:path/path.dart' as p;
import 'package:flutter/services.dart' show rootBundle;

Future<Map<String, String>> getMap() async {
  print("AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA");
  Map<String, String> output = {};
  String fileContent = await rootBundle.loadString('assets/Vocab.txt');
  fileContent.split(";").forEach((element) {
    List<String> s = element.split(",");
    output[s[0]] = s[1];
    print(element);
  });
  print(output.toString());
  return output;
}
