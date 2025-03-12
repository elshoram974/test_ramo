import 'package:flutter/material.dart';
import 'package:test_ramo/core/utils/extensions/theme_ex.dart';

import '../../../core/utils/config/locale/generated/l10n.dart';
import '../../../core/utils/constants/app_constants.dart';
import '../../../core/utils/constants/app_images.dart';
import '../../../core/utils/constants/text_style.dart';
import 'drawer_button_widget.dart';

class ProfileDataWidget extends StatelessWidget {
  const ProfileDataWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Row(
            children: [
              Container(
                height: 53,
                width: 53,
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  border: Border.all(color: context.colorScheme.onPrimary),
                  shape: BoxShape.circle,
                ),
                child: ClipOval(
                  child: Image.asset(
                    AppImages.prfileImage,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(width: AppConst.paddingSizeSmall),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      S.of(context).hello_,
                      style: CustomTextStyle.plusMediam14
                          .copyWith(color: context.colorScheme.onPrimary),
                    ),
                    Text(
                      'Rasha Elsayed',
                      style: CustomTextStyle.plusBold14
                          .copyWith(color: context.colorScheme.onPrimary),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const DrawerButtonWidget(),
      ],
    );
  }
}
