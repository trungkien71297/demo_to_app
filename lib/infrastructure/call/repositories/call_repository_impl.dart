import 'package:demo_app/common/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:demo_app/domain/call/entities/call_item.dart';
import 'package:demo_app/domain/call/repositories/call_repository.dart';
import 'package:demo_app/infrastructure/call/datasources/call_remote_datasource.dart';

class CallRepositoryImpl extends CallRepository {
  final CallRemoteDataSource _callRemoteDataSource;

  CallRepositoryImpl({required CallRemoteDataSource callRemoteDataSource})
      : _callRemoteDataSource = callRemoteDataSource;

  @override
  Future<Either<Failure, List<CallItem>>> getCallList() async {
    try {
      var result = await _callRemoteDataSource.getCallItems();
      return Right(result);
    } on Exception catch (e) {
      return const Left(
          NetWorkFailure(message: 'Error while call api, please try again'));
    }
  }
}
