import 'package:demo_app/domain/call/entities/call_item.dart';

abstract class CallRepository {
  Future<List<CallItem>> getCallList();
}
