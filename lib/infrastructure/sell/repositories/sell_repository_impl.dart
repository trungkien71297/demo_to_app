import 'package:demo_app/common/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:demo_app/domain/sell/entities/sell_item.dart';
import 'package:demo_app/domain/sell/repositories/sell_repository.dart';
import 'package:demo_app/infrastructure/sell/models/sell_item_model.dart';

class SellRepositoryImpl extends SellRepository {
  @override
  Future<Either<Failure, List<SellItem>>> getSellList() async {
    await Future.delayed(const Duration(seconds: 5));
    return Right(List.generate(
        4,
        (index) => SellItemModel(
            id: index,
            name: "Kimmmmmm",
            price: 14353523424,
            quantity: 3,
            type: 1)));
  }
}
