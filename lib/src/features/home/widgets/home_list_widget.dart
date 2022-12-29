
import 'package:flutter/material.dart';

import '../../../constants/constants.dart';
import '../domain/doctor.dart';

class HomeListWidget extends StatelessWidget {
  const HomeListWidget({
    Key? key,
    required this.listDoctor,
    required this.item,
    this.scrollDirection = Axis.vertical,
  }) : super(key: key);

  final List<Doctor> listDoctor;
  final Widget Function(Doctor doctor) item;
  final Axis scrollDirection;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeApp.customHeight(254),
      child: ListView.builder(
        scrollDirection: scrollDirection,
        itemCount: listDoctor.length,
        itemBuilder: (context, index) {
          final doctor = listDoctor[index];
          return Padding(
            padding: EdgeInsets.all(SizeApp.h12),
            child: item(doctor),
          );
        },
      ),
    );
  }
}
