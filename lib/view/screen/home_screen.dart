import 'package:flutter/material.dart';
import 'package:test_ramo/core/utils/constants/app_constants.dart';
import 'package:test_ramo/core/utils/extensions/theme_ex.dart';

import '../widget/app_bar/app_bar_with_drawer_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: const Drawer(),
      body: SafeArea(
        child: ColoredBox(
          color: context.theme.primaryColor,
          child: const CustomScrollView(
            slivers: [
              SliverPadding(
                padding: EdgeInsets.all(AppConst.paddingSizeDefualt),
                sliver: SliverToBoxAdapter(
                  child: AppBarWithDrawerWidget(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
