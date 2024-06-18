import 'dart:ui';

import 'package:pmvvm/view_model.dart';

abstract class HomeInnerViewModel extends ViewModel {
  final VoidCallback blockTabNavigation, unblockTabNavigation;

  HomeInnerViewModel({
    required this.blockTabNavigation,
    required this.unblockTabNavigation,
  });
}
