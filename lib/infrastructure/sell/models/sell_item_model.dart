import 'package:demo_app/domain/sell/entities/sell_item.dart';
import 'package:json_annotation/json_annotation.dart';
part 'sell_item_model.g.dart';

@JsonSerializable()
class SellItemModel extends SellItem {
  const SellItemModel(
      {required id,
      required name,
      required price,
      required quantity,
      required type})
      : super(id: id, name: name, price: price, quantity: quantity, type: type);
  static const table = 'ItemToSell';
  static const columns = ['id', 'name', 'price', 'quantity', 'type'];

  static const migration =
      'CREATE TABLE $table (id INTEGER PRIMARY KEY, name TEXT, price INTEGER, quantity INTEGER, type INTEGER)';

  @override
  List<Object> get props => [id, name, price, quantity, type];

  factory SellItemModel.fromJson(Map<String, dynamic> json) =>
      _$SellItemModelFromJson(json);
  Map<String, dynamic> toJson() => _$SellItemModelToJson(this);
}
