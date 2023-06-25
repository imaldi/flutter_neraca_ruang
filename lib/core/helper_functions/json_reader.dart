import 'dart:io';

Future<String> readJsonFile(String name) async =>
    await File('test/fixtures/$name').readAsString();
