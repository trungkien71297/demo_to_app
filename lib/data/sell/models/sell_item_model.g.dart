// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sell_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SellItemModel _$SellItemModelFromJson(Map<String, dynamic> json) =>
    SellItemModel(
      id: json['id'],
      name: json['name'],
      price: json['price'],
      quantity: json['quantity'],
      type: json['type'],
    );

Map<String, dynamic> _$SellItemModelToJson(SellItemModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'price': instance.price,
      'quantity': instance.quantity,
      'type': instance.type,
    };
