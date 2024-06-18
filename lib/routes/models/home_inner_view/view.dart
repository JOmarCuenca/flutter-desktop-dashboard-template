import 'package:flutter/material.dart';
import 'package:pmvvm/pmvvm.dart';
import 'package:desktop_dashboard_template/routes/home/components/drawer.dart';
import 'package:desktop_dashboard_template/routes/models/home_inner_view/model.dart';

abstract class HomeInnerView<K extends HomeInnerViewModel> extends StatelessWidget {
  final K viewModel;

  const HomeInnerView({
    super.key,
    required this.viewModel,
  });

  @override
  Widget build(BuildContext context) {
    return MVVM<K>(
      view: renderView,
      viewModel: viewModel,
      disposeVM: false,
    );
  }

  StatelessView<K> renderView();

  DrawerItemData get drawerIconData;
}
