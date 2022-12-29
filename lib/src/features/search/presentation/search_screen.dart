import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'search_controller.dart';
import '../widgets/search_widgets.dart';


class SearchScreen extends ConsumerWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final controller = ref.read(homeControllerProvider.notifier);
    final state = ref.watch(homeControllerProvider);
    return Scaffold(
      body: state.listDoctorValue.when(
        data: (data) => SearchWidget(
          listDoctor: state.listDoctorSearch,
          searchByName: controller.searchByName,
          searchC: controller.searchC,
        ),
        error: (error, stackTrace) {
          return Center(
            child: Text(
              error.toString(),
            ),
          );
        },
        loading: () {
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
