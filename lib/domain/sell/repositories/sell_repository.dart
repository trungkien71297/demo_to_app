import 'package:dartz/dartz.dart';
import 'package:demo_app/common/failure.dart';
import 'package:demo_app/domain/sell/entities/sell_item.dart';

abstract class SellRepository {
  Future<Either<Failure, List<SellItem>>> getSellList();
}
