import 'package:demo_app/domain/sell/models/sell_item.dart';

abstract class SellRepository {
  Future<List<SellItem>> getSellList();
}
