import 'package:demo_app/domain/buy/entities/buy_item.dart';

abstract class BuyReposiory {
  Future<List<BuyItem>> getBuyList();
}
