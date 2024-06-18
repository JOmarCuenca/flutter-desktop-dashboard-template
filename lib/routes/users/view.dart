import 'package:flutter/material.dart';
import 'package:pmvvm/views/stateless.view.dart';
import 'package:desktop_dashboard_template/generated/l10n.dart';
import 'package:desktop_dashboard_template/routes/home/components/drawer.dart';
import 'package:desktop_dashboard_template/routes/models/home_inner_view/view.dart';

import 'model.dart';

class UsersView extends HomeInnerView<UsersViewModel> {
  const UsersView({
    super.key,
    required super.viewModel,
  });

  @override
  StatelessView<UsersViewModel> renderView() => _View();

  @override
  DrawerItemData get drawerIconData => DrawerItemData(
        title: S.current.customers,
        icon: Icons.person,
      );
}

class _View extends StatelessView<UsersViewModel> {
  @override
  Widget render(BuildContext context, UsersViewModel viewModel) {
    return Center(
      child: Text("Users View"),
    );
  }
}
