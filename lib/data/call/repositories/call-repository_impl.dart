import 'package:demo_app/domain/call/models/call_item.dart';
import 'package:demo_app/domain/call/repositories/call_repository.dart';

class CallRepositoryImpl extends CallRepository {
  @override
  Future<List<CallItem>> getCallList() {
    throw UnimplementedError();
  }
}
