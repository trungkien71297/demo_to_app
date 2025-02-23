import 'package:dartz/dartz.dart';
import 'package:demo_app/common/failure.dart';
import 'package:demo_app/common/usecase.dart';
import 'package:demo_app/domain/call/entities/call_item.dart';
import 'package:demo_app/domain/call/repositories/call_repository.dart';

class GetCallList extends Usecase<List<CallItem>, NoParams> {
  final CallRepository callRepository;

  GetCallList(this.callRepository);

  @override
  Future<Either<Failure, List<CallItem>>> call(NoParams params) async {
    return await callRepository.getCallList();
  }
}
