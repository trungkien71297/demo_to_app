import 'package:demo_app/domain/buy/entities/buy_item.dart';
import 'package:json_annotation/json_annotation.dart';

part 'buy_item_model.g.dart';

@JsonSerializable()
class BuyItemModel extends BuyItem {
  const BuyItemModel(
      {required id,
      required name,
      required price,
      required quantity,
      required type})
      : super(id: id, name: name, price: price, quantity: quantity, type: type);
  @override
  List<Object> get props => [id, name, price, quantity, type];

  factory BuyItemModel.fromJson(Map<String, dynamic> json) =>
      _$BuyItemModelFromJson(json);
  Map<String, dynamic> toJson() => _$BuyItemModelToJson(this);
}
