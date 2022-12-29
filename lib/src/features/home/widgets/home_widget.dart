
import 'package:flutter/cupertino.dart';

import '../../../common_widgets/common_widgets.dart';
import '../../../constants/constants.dart';
import '../domain/doctor.dart';
import 'home_widgets.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({
    super.key,
    required this.onTap,
    required this.listDoctor,
    required this.onTapAppointment,
    required this.onTapDoctor,
  });

  final void Function(BuildContext context) onTap, onTapDoctor;
  final void Function() onTapAppointment;
  final List<Doctor> listDoctor;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          children: [
            Gap.customGapHeight(45),
            Text(
              "Home Page",
              style: TypographyApp.title,
            ),
            Gap.h36,
            PaddingWidget(
              child: TextFieldWidget.withIconSuffix(
                textEditingController: TextEditingController(),
                hintText: "Search",
                onTap: () => onTap(context),
                iconSuffix: CupertinoIcons.search,
              ),
            ),
            Gap.h20,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                HomeCategoryWidget(
                  iconData: CupertinoIcons.home,
                ),
                HomeCategoryWidget(
                  iconData: CupertinoIcons.calendar_today,
                ),
                HomeCategoryWidget(
                  iconData: CupertinoIcons.mail,
                ),
                HomeCategoryWidget(
                  iconData: CupertinoIcons.person,
                ),
              ],
            ),
            Gap.h28,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: SizeApp.w20),
                  child: HomeTextButtonWidget(
                    onTap: () => onTapDoctor(context),
                    titel: "Best Doctor",
                    subTitle: "See More",
                  ),
                ),
                HomeListWidget(
                  scrollDirection: Axis.horizontal,
                  listDoctor: listDoctor,
                  item: (Doctor doctor) {
                    return HomeDoctorCardWidget(
                      title: doctor.username,
                      subTitle: doctor.email,
                    );
                  },
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: SizeApp.w20),
                  child: HomeTextButtonWidget(
                    onTap: onTapAppointment,
                    titel: "Active Appointment",
                    subTitle: "See More",
                  ),
                ),
                HomeListWidget(
                  listDoctor: listDoctor,
                  item: (Doctor doctor) {
                    return HomeAppointmentCardWidget(
                      title: doctor.username,
                      subTitle: doctor.name,
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
