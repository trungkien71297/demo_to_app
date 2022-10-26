import 'package:demo_app/common/usecase.dart';
import 'package:demo_app/domain/buy/models/buy_item.dart';
import 'package:demo_app/domain/buy/repositories/buy_repository.dart';

class GetBuyList extends Usecase<List<BuyItem>, NoParams> {
  final BuyReposiory buyReposiory;

  GetBuyList(this.buyReposiory);

  @override
  Future<List<BuyItem>> call(NoParams params) async {
    return await buyReposiory.getBuyList();
  }
}
