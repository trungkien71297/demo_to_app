import 'package:demo_app/common/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:demo_app/domain/buy/entities/buy_item.dart';
import 'package:demo_app/domain/buy/repositories/buy_repository.dart';
import 'package:demo_app/infrastructure/buy/models/buy_item_model.dart';

class BuyRepositoryImpl extends BuyReposiory {
  @override
  Future<Either<Failure, List<BuyItem>>> getBuyList() async {
    await Future.delayed(const Duration(seconds: 2));
    return Right(List.generate(
        14,
        (index) => BuyItemModel(
            id: index, name: "Gai", price: 1233232, quantity: 2, type: 1)));
  }
}
