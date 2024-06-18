import 'package:desktop_dashboard_template/utils/logging.dart';

abstract class APIServiceModel {
  Future<bool> hasActiveSubscription() async {
    logIfDebugging("Called hasActiveSubscription from instance $this");
    return false;
  }

  void login() {
    logIfDebugging("Called login from instance $this");
  }

  Future<void> logout() async {
    logIfDebugging("Called logout from instance $this");
  }
}
