import 'package:flutter/material.dart';
import 'package:test_ramo/core/utils/extensions/theme_ex.dart';

import '../../../core/utils/config/locale/generated/l10n.dart';
import '../../../core/utils/constants/app_colors.dart';
import '../../../core/utils/constants/app_constants.dart';
import '../../../core/utils/constants/app_images.dart';
import '../../../core/utils/constants/text_style.dart';

class SearchWithFilterWidget extends StatelessWidget {
  const SearchWithFilterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () {},
          borderRadius: BorderRadius.circular(AppConst.borderRadius),
          child: Container(
            width: 50,
            height: 50,
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            decoration: BoxDecoration(
              border: Border.all(
                color: context.colorScheme.onPrimary,
                width: 2,
              ),
              borderRadius: BorderRadius.circular(AppConst.borderRadius),
            ),
            child: Image.asset(AppImages.filterIcon),
          ),
        ),
        const SizedBox(width: AppConst.paddingSizeDefualt),
        Expanded(
          child: TextField(
            decoration: InputDecoration(
              fillColor: context.colorScheme.onPrimary,
              filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(AppConst.borderRadius),
                borderSide: BorderSide.none,
              ),
              hintText: S.of(context).search,
              prefixIcon: const Icon(Icons.search, size: 24),
              prefixIconColor: AppColors.grey,
              hintStyle:
                  CustomTextStyle.plusMediam14.copyWith(color: AppColors.grey),
            ),
          ),
        ),
      ],
    );
  }
}
