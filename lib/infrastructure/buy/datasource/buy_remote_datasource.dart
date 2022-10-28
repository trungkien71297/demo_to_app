import 'package:demo_app/common/constants.dart';
import 'package:demo_app/infrastructure/buy/models/buy_item_model.dart';
import 'package:dio/dio.dart';

abstract class BuyRemoteDatasource {
  Future<List<BuyItemModel>> getBuyList();
}

class BuyRemoteDatasourceImpl extends BuyRemoteDatasource {
  final Dio client;

  BuyRemoteDatasourceImpl(this.client);

  @override
  Future<List<BuyItemModel>> getBuyList() async {
    var response = await client.get(ApiConstant.getBuyApi);
    if (response.statusCode == 200) {
      List list = response.data;
      return list.map((item) => BuyItemModel.fromJson(item)).toList();
    } else {
      throw (Exception('Network error'));
    }
  }
}
