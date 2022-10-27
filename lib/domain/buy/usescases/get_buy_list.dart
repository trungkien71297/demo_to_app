import 'package:dartz/dartz.dart';
import 'package:demo_app/common/failure.dart';
import 'package:demo_app/common/usecase.dart';
import 'package:demo_app/domain/buy/entities/buy_item.dart';
import 'package:demo_app/domain/buy/repositories/buy_repository.dart';

class GetBuyList extends Usecase<List<BuyItem>, NoParams> {
  final BuyReposiory buyReposiory;

  GetBuyList(this.buyReposiory);

  @override
  Future<Either<Failure, List<BuyItem>>> call(NoParams params) async {
    return await buyReposiory.getBuyList();
  }
}
