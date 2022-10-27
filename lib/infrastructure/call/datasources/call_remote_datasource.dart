import 'package:demo_app/common/constants.dart';
import 'package:demo_app/infrastructure/call/models/call_item_model.dart';
import 'package:dio/dio.dart';

abstract class CallRemoteDataSource {
  Future<List<CallItemModel>> getCallItems();
}

class CallRemoteDataSourceImpl extends CallRemoteDataSource {
  final Dio client;
  CallRemoteDataSourceImpl(this.client);

  @override
  Future<List<CallItemModel>> getCallItems() async {
    var response = await client.get(ApiConstant.getCallApi);
    if (response.statusCode == 200) {
      List json = response.data;
      return json.map((item) => CallItemModel.fromJson(item)).toList();
    } else {
      throw Exception('Server exception');
    }
  }
}
