import 'package:dartz/dartz.dart';
import 'package:demo_app/common/failure.dart';
import 'package:demo_app/domain/buy/entities/buy_item.dart';

abstract class BuyReposiory {
  Future<Either<Failure, List<BuyItem>>> getBuyList();
}
