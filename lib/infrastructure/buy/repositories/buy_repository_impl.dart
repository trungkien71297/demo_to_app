import 'package:demo_app/common/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:demo_app/domain/buy/entities/buy_item.dart';
import 'package:demo_app/domain/buy/repositories/buy_repository.dart';
import 'package:demo_app/infrastructure/buy/datasource/buy_remote_datasource.dart';

class BuyRepositoryImpl extends BuyReposiory {
  final BuyRemoteDatasource _remoteDatasource;

  BuyRepositoryImpl({required BuyRemoteDatasource remoteDatasource})
      : _remoteDatasource = remoteDatasource;

  @override
  Future<Either<Failure, List<BuyItem>>> getBuyList() async {
    try {
      var result = await _remoteDatasource.getBuyList();
      return Right(result);
    } on Exception catch (_) {
      return const Left(
          NetWorkFailure(message: 'Network error, please try againt'));
    }
  }
}
