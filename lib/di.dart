import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart' as path_provider;

import 'core/consts/hive_const.dart';
import 'data/models/login_response/login_response.dart';

final sl = GetIt.instance;
Future<void> init() async {
  WidgetsFlutterBinding.ensureInitialized();

  final appDocumentDir = await path_provider.getApplicationDocumentsDirectory();
  Hive.init(appDocumentDir.path);
  HydratedBloc.storage =
      await HydratedStorage.build(storageDirectory: appDocumentDir);
  Hive.registerAdapter(LoginResponseAdapter());
  Hive.registerAdapter(UserDataAdapter());
  Hive.registerAdapter(UserAdapter());
  final authBox = await Hive.openBox<LoginResponse>(authBoxKey);
  final userBox = await Hive.openBox<User>(userDataKey);
  sl.registerLazySingleton<Box<LoginResponse>>(() => authBox);
  sl.registerLazySingleton<Box<User>>(() => userBox);
}
