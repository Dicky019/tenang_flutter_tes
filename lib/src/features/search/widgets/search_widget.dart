
import 'package:flutter/material.dart';

import '../../../common_widgets/common_widgets.dart';
import '../../../constants/constants.dart';
import '../../home/domain/doctor.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({
    super.key,
    required this.listDoctor,
    required this.searchByName,
    required this.searchC,
  });

  final List<Doctor> listDoctor;
  final void Function(String) searchByName;
  final TextEditingController searchC;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Gap.customGapHeight(45),
          Text(
            "Doctor list with search",
            style: TypographyApp.title,
          ),
          Gap.h36,
          PaddingWidget(
            child: TextFieldWidget(
              textEditingController: searchC,
              hintText: "Search",
              onChanged: searchByName,
            ),
          ),
          Gap.h4,
          Expanded(
            child: ListView.builder(
              itemCount: listDoctor.length,
              itemBuilder: (context, index) {
                final data = listDoctor[index];
                final gapEnd =
                    (index == listDoctor.length - 1) ? Gap.h32 : Gap.h16;
                final gapInit = (index == 0) ? Gap.h28 : Gap.customGapHeight(0);
                return PaddingWidget(
                  child: Column(
                    children: [
                      gapInit,
                      CardWidget(
                        child: ListTile(
                          leading: const AvatarWidget(
                            padding: 0,
                            size: 45,
                          ),
                          title: Text(data.name),
                          subtitle: Text(data.name),
                        ),
                      ),
                      gapEnd,
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
