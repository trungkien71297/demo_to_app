import 'package:demo_app/infrastructure/sell/models/sell_item_model.dart';

class ApiConstant {
  static const baseURL = "https://my-json-server.typicode.com/imkhan334/demo-1";

  static const getCallApi = '/call';
  static const getBuyApi = '/buy';
  static const connectionTimeout = 10000;
  static const sendTimeout = 10000;
  static const receiveTimeout = 10000;
}

class SqfliteConstant {
  static const migrations = SellItemModel.migration;
}
