import 'package:demo_app/common/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:demo_app/domain/sell/entities/sell_item.dart';
import 'package:demo_app/domain/sell/repositories/sell_repository.dart';
import 'package:demo_app/infrastructure/sell/datasources/sell_local_datasrouce.dart';

class SellRepositoryImpl extends SellRepository {
  final SellLocalDatasource _sellLocalDatasource;

  SellRepositoryImpl({required SellLocalDatasource sellLocalDatasource})
      : _sellLocalDatasource = sellLocalDatasource;

  @override
  Future<Either<Failure, List<SellItem>>> getSellList() async {
    try {
      var result = await _sellLocalDatasource.getSellList();
      return Right(result);
    } on Exception catch (e) {
      return Left(UnknownFailure(message: e.toString()));
    }
  }
}
