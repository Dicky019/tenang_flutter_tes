import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../home/domain/doctor.dart';

class SearchState {
  final AsyncValue<List<Doctor>> listDoctorValue;
  final List<Doctor> listDoctor;
  final List<Doctor> listDoctorSearch;

  const SearchState({
    this.listDoctorValue = const AsyncData([]),
    this.listDoctor = const [],
    this.listDoctorSearch = const [],
  });

  SearchState copyWith({
    AsyncValue<List<Doctor>>? listDoctorValue,
    List<Doctor>? listDoctor,
    List<Doctor>? listDoctorSearch,
  }) {
    return SearchState(
      listDoctorValue: listDoctorValue ?? this.listDoctorValue,
      listDoctor: listDoctor ?? this.listDoctor,
      listDoctorSearch: listDoctorSearch ?? this.listDoctorSearch,
    );
  }

  bool get isLoading => listDoctorValue.isLoading;
}
