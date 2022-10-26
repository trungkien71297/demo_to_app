import 'package:demo_app/domain/sell/models/sell_item.dart';
import 'package:demo_app/domain/sell/repositories/sell_repository.dart';

class SellRepositoryImpl extends SellRepository {
  @override
  Future<List<SellItem>> getSellList() {
    throw UnimplementedError();
  }
}
