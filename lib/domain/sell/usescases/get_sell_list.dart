import 'package:dartz/dartz.dart';
import 'package:demo_app/common/failure.dart';
import 'package:demo_app/common/usecase.dart';
import 'package:demo_app/domain/sell/entities/sell_item.dart';
import 'package:demo_app/domain/sell/repositories/sell_repository.dart';

class GetSellList extends Usecase<List<SellItem>, NoParams> {
  final SellRepository sellRepository;

  GetSellList(this.sellRepository);

  @override
  Future<Either<Failure, List<SellItem>>> call(NoParams params) async {
    return await sellRepository.getSellList();
  }
}
