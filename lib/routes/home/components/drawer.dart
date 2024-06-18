import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:desktop_dashboard_template/generated/l10n.dart';

class SideMenuController {
  void Function(int) onTapTab;
  int Function() selectedViewIndex;
  Iterable<DrawerItemData> sideMenuItems;
  VoidCallback logout;

  SideMenuController(
    this.onTapTab,
    this.selectedViewIndex,
    this.sideMenuItems,
    this.logout,
  );
}

class SideMenu extends StatelessWidget {
  final SideMenuController sideMenuController;
  const SideMenu({
    super.key,
    required this.sideMenuController,
  });

  @override
  Widget build(BuildContext context) {
    final List<Widget> menuItems = _buildMenuItems();

    return Drawer(
      child: Column(
        children: [
          Expanded(
            child: ListView(
              children: menuItems,
            ),
          ),
          DrawerListTile(
            tileData: DrawerItemData(
              title: S.current.logout,
              icon: Icons.logout,
            ),
            selected: false,
            press: sideMenuController.logout,
          ),
        ],
      ),
    );
  }

  List<Widget> _buildMenuItems() {
    final List<Widget> menuItems = [
      const DrawerHeader(
        child: FlutterLogo(),
      ),
    ];

    for (final (i, item) in sideMenuController.sideMenuItems.indexed) {
      menuItems.add(DrawerListTile(
        tileData: item,
        press: () => sideMenuController.onTapTab(i),
        selected: i == sideMenuController.selectedViewIndex(),
      ));
    }

    return menuItems;
  }
}

class DrawerItemData {
  final String title;
  final String? svgSrc;
  final IconData? icon;

  DrawerItemData({
    required this.title,
    this.svgSrc,
    this.icon,
  }) : assert(svgSrc != null || icon != null);
}

class DrawerListTile extends StatelessWidget {
  final DrawerItemData tileData;
  final bool selected;
  final VoidCallback press;

  const DrawerListTile({
    super.key,
    required this.tileData,
    required this.selected,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      selected: selected,
      onTap: press,
      leading: leadingIcon(context),
      title: Text(
        tileData.title,
      ),
    );
  }

  Widget leadingIcon(BuildContext context) {
    if (tileData.icon != null) {
      return Icon(tileData.icon);
    } else if (tileData.svgSrc != null) {
      return SvgPicture.asset(
        tileData.svgSrc!,
        height: 16,
        colorFilter: ColorFilter.mode(
          Theme.of(context).iconTheme.color!,
          BlendMode.srcIn,
        ),
      );
    }
    return const FlutterLogo();
  }
}
