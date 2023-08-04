import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart' as path_provider;
import 'core/consts/hive_const.dart';
import 'data/models/auth_response/auth_response.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:intl/date_symbol_data_local.dart';

import 'data/models/forum_comment_response/forum_comment_response.dart';

final sl = GetIt.instance;
Future<void> init() async {
  WidgetsFlutterBinding.ensureInitialized();
  initializeDateFormatting('id');

  final appDocumentDir = await path_provider.getApplicationDocumentsDirectory();
  Hive.init(appDocumentDir.path);
  // Hive.registerAdapter(LoginResponseAdapter());
  // Hive.registerAdapter(UserDataAdapter());
  // Hive.registerAdapter(UserAdapter());
  Hive.registerAdapter(AuthResponseAdapter());
  Hive.registerAdapter(MemberDataAdapter());
  Hive.registerAdapter(MemberAdapter());
  Hive.registerAdapter(ForumCommentModelAdapter());
  // final authBox = await Hive.openBox<LoginResponse>(authBoxKey);
  final authBox = await Hive.openBox<AuthResponse>(authBoxKey);
  final policyBox = await Hive.openBox<bool>(policyBoxKey);
  // final userBox = await Hive.openBox<Members>(userDataKey);
  final likedContent = await Hive.openBox<String>(likedContentBoxKey);
  final likedForumComment =
      await Hive.openBox<ForumCommentModel>(forumCommentsBoxKey);
  sl.registerLazySingleton<GlobalKey<ScaffoldState>>(
      () => GlobalKey<ScaffoldState>());
  sl.registerLazySingleton<ScrollController>(() => ScrollController());
  sl.registerLazySingleton<Box<AuthResponse>>(() => authBox);
  sl.registerLazySingleton<Box<bool>>(() => policyBox);
  // sl.registerLazySingleton<Box<Members>>(() => userBox);
  sl.registerLazySingleton<Box<String>>(() => likedContent);
  sl.registerLazySingleton<Box<ForumCommentModel>>(() => likedForumComment);

  /// Permission
  var statusCamera = await Permission.camera.status;
  var statusStorage = await Permission.storage.status;
  var statusLocation = await Permission.locationWhenInUse.status;

  if (statusLocation.isDenied) await Permission.locationWhenInUse.request();
  if (statusLocation.isPermanentlyDenied) openAppSettings();
  if (statusCamera.isDenied) await Permission.camera.request();
  if (await Permission.camera.isPermanentlyDenied) {
    openAppSettings();
  }
  if (statusStorage.isDenied) {
    await Permission.storage.request();
  }

  if (await Permission.manageExternalStorage.status.isDenied ||
      await Permission.manageExternalStorage.isPermanentlyDenied) {
    await Permission.manageExternalStorage.request();
  }
}
