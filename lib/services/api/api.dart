import 'package:desktop_dashboard_template/services/api/gcp_api.dart';

import 'model.dart';

abstract class ApiService {
  static final APIServiceModel instance = GCPBasedApi();
}
