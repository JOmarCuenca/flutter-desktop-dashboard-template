import 'package:flutter/material.dart';
import 'package:desktop_dashboard_template/utils/responsive.dart';

class Header extends StatelessWidget {
  final void Function() onTapMenu;
  final String headerTitle;

  const Header({
    required this.onTapMenu,
    required this.headerTitle,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (!Responsive.isDesktop(context))
          IconButton(
            icon: const Icon(Icons.menu),
            onPressed: onTapMenu,
          ),
        if (!Responsive.isMobile(context))
          Text(
            headerTitle,
            style: Theme.of(context).textTheme.titleLarge,
          ),
      ],
    );
  }
}
