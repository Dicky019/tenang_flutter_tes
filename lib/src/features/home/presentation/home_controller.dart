import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../dasboard/presentation/dasboard_controller.dart';

import '../../../routing/app_route.dart';
import '../application/home_service.dart';
import 'home_state.dart';

class HomeControllerNotifier extends StateNotifier<HomeState> {
  HomeControllerNotifier(this._homeService) : super(const HomeState()) {
    init();
  }

  final HomeService _homeService;
  final searchC = TextEditingController();

  void init() {
    _getDoctors();
  }

  void gotoSearch(BuildContext context) {
    context.goNamed(
      RouteApp.search.path,
    );
  }

  void gotoAppontMent(WidgetRef ref) {
    ref.read(dasboardControllerProvider.notifier).changeWidget(1);
  }

  Future _getDoctors() async {
    state = state.copyWith(listDoctorValue: const AsyncLoading());
    final result = await _homeService.getDoctors();
    result.when(
      success: (data) {
        state = state.copyWith(
          listDoctorValue: AsyncData(data),
          listDoctor: data,
        );
      },
      failure: (error, stackTrace) {
        state = state.copyWith(
          listDoctorValue: AsyncError(error, stackTrace),
        );
      },
    );
  }
}

final homeControllerProvider =
    StateNotifierProvider<HomeControllerNotifier, HomeState>(
  (ref) {
    return HomeControllerNotifier(ref.read(homeServiceProvider));
  },
);
