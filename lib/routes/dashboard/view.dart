import 'package:flutter/material.dart';
import 'package:pmvvm/views/stateless.view.dart';
import 'package:desktop_dashboard_template/generated/l10n.dart';
import 'package:desktop_dashboard_template/routes/home/components/drawer.dart';
import 'package:desktop_dashboard_template/routes/models/home_inner_view/view.dart';

import 'model.dart';

class DashboardView extends HomeInnerView<DashboardViewModel> {
  const DashboardView({
    super.key,
    required super.viewModel,
  });

  @override
  StatelessView<DashboardViewModel> renderView() => _View();

  @override
  DrawerItemData get drawerIconData => DrawerItemData(
        title: S.current.dashboard,
        svgSrc: "assets/svg/dashboard.svg",
      );
}

class _View extends StatelessView<DashboardViewModel> {
  @override
  Widget render(BuildContext context, DashboardViewModel viewModel) {
    return Center(
      child: Text("Dashboard View"),
    );
  }
}
