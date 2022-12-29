import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../utils/extension/string_extension.dart';
import '../../home/application/home_service.dart';
import '../../home/domain/doctor.dart';
import 'search_state.dart';


class SearchControllerNotifier extends StateNotifier<SearchState> {
  SearchControllerNotifier(this._homeService) : super(const SearchState()) {
    init();
  }

  final HomeService _homeService;
  final searchC = TextEditingController();

  void init() {
    _getDoctors();
  }

  void searchByName(String? value) {
    final List<Doctor> list = [];
    if (value != null) {
      list.addAll(
        state.listDoctor.where(
          (doctor) => doctor.name.toLowerCase().contains(
                value.toLowerCase(),
              ),
        ),
      );
    } else if (value.isNullOrEmpty) {
      list.addAll(state.listDoctorValue.value ?? []);
    }

    state = state.copyWith(
      listDoctorSearch: list,
    );
  }

  Future _getDoctors() async {
    state = state.copyWith(listDoctorValue: const AsyncLoading());
    final result = await _homeService.getDoctors();
    result.when(
      success: (data) {
        state = state.copyWith(
          listDoctorValue: AsyncData(data),
          listDoctor: data,
          listDoctorSearch: data,
        );
      },
      failure: (error, stackTrace) {
        state = state.copyWith(
          listDoctorValue: AsyncError(error, stackTrace),
        );
      },
    );
  }

  @override
  void dispose() {
    searchC.dispose();
    super.dispose();
  }
}

final homeControllerProvider =
    StateNotifierProvider<SearchControllerNotifier, SearchState>(
  (ref) {
    return SearchControllerNotifier(ref.read(homeServiceProvider));
  },
);
