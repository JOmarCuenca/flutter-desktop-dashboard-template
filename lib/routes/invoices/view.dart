import 'package:flutter/material.dart';
import 'package:pmvvm/views/stateless.view.dart';
import 'package:desktop_dashboard_template/generated/l10n.dart';
import 'package:desktop_dashboard_template/routes/home/components/drawer.dart';
import 'package:desktop_dashboard_template/routes/models/home_inner_view/view.dart';

import 'model.dart';

class InvoicesView extends HomeInnerView<InvoicesViewModel> {
  const InvoicesView({
    super.key,
    required super.viewModel,
  });

  @override
  StatelessView<InvoicesViewModel> renderView() => _View();

  @override
  DrawerItemData get drawerIconData => DrawerItemData(
        title: S.current.invoices,
        icon: Icons.file_copy,
      );
}

class _View extends StatelessView<InvoicesViewModel> {
  @override
  Widget render(BuildContext context, InvoicesViewModel viewModel) {
    return Center(
      child: Text("Invoices View"),
    );
  }
}
