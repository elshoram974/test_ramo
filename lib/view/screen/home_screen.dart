import 'package:flutter/material.dart';
import 'package:test_ramo/core/utils/constants/app_constants.dart';
import 'package:test_ramo/core/utils/extensions/theme_ex.dart';

import '../widget/app_bar/app_bar_with_drawer_widget.dart';
import '../widget/home_body_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: const Drawer(),
      body: SafeArea(
        child: ColoredBox(
          color: context.theme.primaryColor,
          child: CustomScrollView(
            slivers: [
              const SliverPadding(
                padding: EdgeInsets.all(AppConst.paddingSizeDefualt),
                sliver: SliverToBoxAdapter(child: AppBarWithDrawerWidget()),
              ),
              SliverFillRemaining(
                hasScrollBody: false,
                child: Container(
                  padding: const EdgeInsets.all(AppConst.paddingSizeDefualt),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(47)),
                  ),
                  child: const HomeBodyWidget(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}