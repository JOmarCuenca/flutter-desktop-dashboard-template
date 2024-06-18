import 'package:flutter/material.dart';
import 'package:pmvvm/views/stateless.view.dart';
import 'package:desktop_dashboard_template/generated/l10n.dart';
import 'package:desktop_dashboard_template/routes/home/components/drawer.dart';
import 'package:desktop_dashboard_template/routes/models/home_inner_view/view.dart';
import 'package:desktop_dashboard_template/routes/settings/model.dart';

class SettingsView extends HomeInnerView<SettingsViewModel> {
  const SettingsView({super.key, required super.viewModel});

  @override
  StatelessView<SettingsViewModel> renderView() => _View();

  @override
  DrawerItemData get drawerIconData => DrawerItemData(
        title: S.current.settings,
        icon: Icons.settings,
      );
}

class _View extends StatelessView<SettingsViewModel> {
  @override
  Widget render(BuildContext context, SettingsViewModel viewModel) {
    return Center(
      child: Text("Settings View"),
    );
  }
}
