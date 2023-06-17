import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'dashboard_state.dart';

class DashboardCubit extends HydratedCubit<DashboardState> {
  DashboardCubit() : super(DashboardInitial());

  @override
  DashboardState? fromJson(Map<String, dynamic> json) {
    // TODO: implement fromJson
    throw UnimplementedError();
  }

  @override
  Map<String, dynamic>? toJson(DashboardState state) {
    // TODO: implement toJson
    throw UnimplementedError();
  }
}
