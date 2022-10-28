import 'package:demo_app/common/database.dart';
import 'package:demo_app/infrastructure/sell/models/sell_item_model.dart';

abstract class SellLocalDatasource {
  Future<List<SellItemModel>> getSellList();
}

class SellLocalDatasourceImpl extends SellLocalDatasource {
  final DemoDBprovider provider;

  SellLocalDatasourceImpl(this.provider);

  @override
  Future<List<SellItemModel>> getSellList() async {
    var list = await provider.db.query('ItemToSell',
        columns: ['id', 'name', 'price', 'quantity', 'type']);
    return list.map((item) => SellItemModel.fromJson(item)).toList();
  }
}
