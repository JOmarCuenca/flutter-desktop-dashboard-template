import 'package:flutter/material.dart';
import 'package:desktop_dashboard_template/routes/home/view.dart';

final Map<String, Widget Function(BuildContext)> routes = {
  HomeView.route: (p0) => const HomeView(),
};