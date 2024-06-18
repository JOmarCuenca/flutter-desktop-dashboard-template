import 'package:flutter/material.dart';
import 'package:pmvvm/pmvvm.dart';
import 'package:desktop_dashboard_template/common/views.dart';
import 'package:desktop_dashboard_template/routes/home/components/drawer.dart';
import 'package:desktop_dashboard_template/routes/home/model.dart';
import 'package:desktop_dashboard_template/utils/responsive.dart';

import 'components/header.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  static const route = "/";

  @override
  Widget build(BuildContext context) {
    return MVVM<HomeViewModel>(
      view: () => const _View(),
      viewModel: HomeViewModel(),
    );
  }
}

class _View extends StatelessView<HomeViewModel> {
  const _View();

  @override
  Widget render(BuildContext context, HomeViewModel viewModel) {
    final SideMenu sideMenu = SideMenu(sideMenuController: viewModel.sideMenuController);
    return Scaffold(
      key: viewModel.scaffoldKey,
      drawer: sideMenu,
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (Responsive.isDesktop(context)) Expanded(child: sideMenu),
            const SizedBox(width: defaultPadding),
            Expanded(
              flex: 5,
              child: SafeArea(
                child: Column(
                  children: [
                    Header(
                      onTapMenu: viewModel.controlMenu,
                      headerTitle: "Dashboard",
                    ),
                    const SizedBox(height: defaultPadding),
                    Expanded(child: viewModel.currentlySelectedView()),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
