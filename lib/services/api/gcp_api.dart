import 'model.dart';

class GCPBasedApi extends APIServiceModel {
  static GCPBasedApi? _instance;

  factory GCPBasedApi() {
    _instance ??= GCPBasedApi._internal();
    return _instance!;
  }

  GCPBasedApi._internal();
}
