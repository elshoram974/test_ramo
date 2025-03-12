import 'package:flutter/material.dart';

import '../../core/utils/constants/app_constants.dart';
import '../../core/utils/constants/app_images.dart';

class DrawerButtonWidget extends StatelessWidget {
  const DrawerButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Scaffold.of(context).openEndDrawer(),
      borderRadius: BorderRadius.circular(AppConst.borderRadius),
      child: Image.asset(
        AppImages.drawerIcon,
        height: 40,
        width: 40,
      ),
    );
  }
}