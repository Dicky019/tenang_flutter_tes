import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../domain/doctor.dart';

class HomeState {
  final AsyncValue<List<Doctor>> listDoctorValue;
  final List<Doctor> listDoctor;

  const HomeState({
    this.listDoctorValue = const AsyncData([]),
    this.listDoctor = const [],
  });

  HomeState copyWith({
    AsyncValue<List<Doctor>>? listDoctorValue,
    List<Doctor>? listDoctor,
  }) {
    return HomeState(
      listDoctorValue: listDoctorValue ?? this.listDoctorValue,
      listDoctor: listDoctor ?? this.listDoctor,
    );
  }

  bool get isLoading => listDoctorValue.isLoading;
}
