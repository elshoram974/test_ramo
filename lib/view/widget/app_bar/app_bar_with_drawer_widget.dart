import 'package:flutter/material.dart';

import '../../../core/utils/constants/app_constants.dart';
import 'profile_data_widget.dart';
import 'search_with_filter_widget.dart';

class AppBarWithDrawerWidget extends StatelessWidget {
  const AppBarWithDrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        ProfileDataWidget(),
        SizedBox(height: AppConst.paddingSizeDefualt),
        SearchWithFilterWidget()
      ],
    );
  }
}
