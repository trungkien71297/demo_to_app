import 'package:dartz/dartz.dart';
import 'package:demo_app/common/failure.dart';
import 'package:demo_app/domain/call/entities/call_item.dart';

abstract class CallRepository {
  Future<Either<Failure, List<CallItem>>> getCallList();
}
