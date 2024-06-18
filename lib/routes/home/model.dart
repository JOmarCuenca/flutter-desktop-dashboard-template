import 'package:flutter/material.dart';
import 'package:pmvvm/view_model.dart';
import 'package:desktop_dashboard_template/routes/dashboard/model.dart';
import 'package:desktop_dashboard_template/routes/dashboard/view.dart';
import 'package:desktop_dashboard_template/routes/home/components/drawer.dart';
import 'package:desktop_dashboard_template/routes/invoices/model.dart';
import 'package:desktop_dashboard_template/routes/invoices/view.dart';
import 'package:desktop_dashboard_template/routes/models/home_inner_view/view.dart';
import 'package:desktop_dashboard_template/routes/settings/model.dart';
import 'package:desktop_dashboard_template/routes/settings/view.dart';
import 'package:desktop_dashboard_template/routes/users/model.dart';
import 'package:desktop_dashboard_template/routes/users/view.dart';
import 'package:desktop_dashboard_template/services/api/api.dart';
import 'package:desktop_dashboard_template/utils/logging.dart';

class HomeViewModel extends ViewModel {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  GlobalKey<ScaffoldState> get scaffoldKey => _scaffoldKey;

  int _currentlySelectedView = 0;
  late final List<HomeInnerView> _innerViews = [
    DashboardView(viewModel: DashboardViewModel(blockTabNavigation: enableTabNavigation, unblockTabNavigation: disableTabNavigation)),
    UsersView(viewModel: UsersViewModel(blockTabNavigation: enableTabNavigation, unblockTabNavigation: disableTabNavigation)),
    InvoicesView(viewModel: InvoicesViewModel(blockTabNavigation: enableTabNavigation, unblockTabNavigation: disableTabNavigation)),
    SettingsView(viewModel: SettingsViewModel(blockTabNavigation: enableTabNavigation, unblockTabNavigation: disableTabNavigation)),
  ];

  late final SideMenuController sideMenuController = SideMenuController(
    onTapTab,
    currentlySelectedIndex,
    _innerViews.map((e) => e.drawerIconData),
    logout,
  );

  bool _ableToNavigate = true;

  void enableTabNavigation() => _ableToNavigate = true;
  void disableTabNavigation() => _ableToNavigate = false;

  void controlMenu() {
    if (!_scaffoldKey.currentState!.isDrawerOpen) {
      _scaffoldKey.currentState!.openDrawer();
    }
  }

  int currentlySelectedIndex() => _currentlySelectedView;
  Widget currentlySelectedView() => _innerViews[_currentlySelectedView];

  void onTapTab(int index) {
    logIfDebugging("Picking tab $index");
    if (!_ableToNavigate) return;
    _currentlySelectedView = index;
    notifyListeners();
  }

  Future<void> logout() async {
    logIfDebugging("Initializing logout");

    try {
      await ApiService.instance.logout();
      logIfDebugging("Successfully logged out! Pushing to login view");
    } catch (e, s) {
      logIfDebugging(
        "Error occurred while attempting logout",
        level: 500,
        error: e,
        trace: s,
      );
    }
  }
}
