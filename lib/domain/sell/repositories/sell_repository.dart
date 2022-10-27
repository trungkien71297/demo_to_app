import 'package:demo_app/domain/sell/entities/sell_item.dart';

abstract class SellRepository {
  Future<List<SellItem>> getSellList();
}
