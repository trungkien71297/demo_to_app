import 'package:demo_app/domain/buy/models/buy_item.dart';

abstract class BuyReposiory {
  Future<List<BuyItem>> getBuyList();
}
