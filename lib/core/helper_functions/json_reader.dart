import 'dart:io';

Future<String> readJsonFile(String name) async =>
    await File('$name').readAsString();
