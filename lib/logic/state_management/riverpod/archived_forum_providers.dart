import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_neraca_ruang/data/models/diskusi_response/diskusi_response.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:http/http.dart' as http;

import '../../../core/consts/urls.dart';
part 'archived_forum_providers.g.dart';

var archivedForums = FutureProvider<List<DiskusiModel>>((ref) async {
  try {
    String token =
        "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJuZXJhY2FydWFuZy1wb3J0YWwiLCJpYXQiOjE2ODMyOTIzNTZ9.BN1wbCp2HTxXVwmz9QtQXscHzv5INWPO6n5xTZDTDhc";
    var url = Uri.https(baseUrl, getListArchiveDiskusi);

    // final json = await http.get(url);
    final response = await http.get(url, headers: {
      'Authorization': token,
      'Accept': 'application/json',
    });
    log("forum list archive response: ${response.body}");
    if (response.statusCode == 200) {
      return DiskusiResponse.fromJson(jsonDecode(response.body)).data?.data ??
          [];
    }
  } catch (e) {
    return [];
  }
  return [];
});

@riverpod
class ArchivedValues extends _$ArchivedValues {
  @override
  Map<int, String> build() {
    return Map();
  }

  addAll(Map<int, String> archiveList) {
    state = archiveList;
  }
}

var selectedArchiveValue = StateProvider<String?>((ref) => null);
var selectedArchiveId = StateProvider<int?>((ref) => null);
var archiveDropdownValues = StateProvider<Set<String>>((ref) => {});
