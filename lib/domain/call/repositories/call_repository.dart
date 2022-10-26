import 'package:demo_app/domain/call/models/call_item.dart';

abstract class CallRepository {
  Future<List<CallItem>> getCallList();
}
