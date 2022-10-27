import 'package:demo_app/domain/call/entities/call_item.dart';
import 'package:demo_app/domain/call/repositories/call_repository.dart';
import 'package:demo_app/infrastructure/call/models/call_item_model.dart';

class CallRepositoryImpl extends CallRepository {
  @override
  Future<List<CallItem>> getCallList() async {
    await Future.delayed(const Duration(seconds: 3));
    return List.generate(
        5,
        (index) =>
            CallItemModel(id: index, name: "Corona", number: "123454123124"));
  }
}
