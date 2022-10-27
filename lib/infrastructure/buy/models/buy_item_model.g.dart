// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'buy_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BuyItemModel _$BuyItemModelFromJson(Map<String, dynamic> json) => BuyItemModel(
      id: json['id'],
      name: json['name'],
      price: json['price'],
      quantity: json['quantity'],
      type: json['type'],
    );

Map<String, dynamic> _$BuyItemModelToJson(BuyItemModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'price': instance.price,
      'quantity': instance.quantity,
      'type': instance.type,
    };
