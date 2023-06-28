import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart' as path_provider;
import 'package:flutter/services.dart';
import 'core/consts/hive_const.dart';
import 'data/models/auth_response/auth_response.dart';
import 'data/models/login_response_deprecated/login_response.dart';
import 'package:intl/date_symbol_data_local.dart';

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
  // final authBox = await Hive.openBox<LoginResponse>(authBoxKey);
  final authBox = await Hive.openBox<AuthResponse>(authBoxKey);
  final userBox = await Hive.openBox<Members>(userDataKey);
  final likedContent = await Hive.openBox<String>(likedContentBoxKey);
  sl.registerLazySingleton<GlobalKey<ScaffoldState>>(
      () => GlobalKey<ScaffoldState>());
  sl.registerLazySingleton<ScrollController>(() => ScrollController());
  sl.registerLazySingleton<Box<AuthResponse>>(() => authBox);
  sl.registerLazySingleton<Box<Members>>(() => userBox);
  sl.registerLazySingleton<Box<String>>(() => likedContent);
}
