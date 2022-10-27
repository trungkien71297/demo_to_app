import 'package:equatable/equatable.dart';

class BuyItem extends Equatable {
  final int id;
  final String name;
  final int price;
  final int quantity;
  final int type;

  const BuyItem(
      {required this.id,
      required this.name,
      required this.price,
      required this.quantity,
      required this.type});

  @override
  List<Object> get props => [id, name, price, quantity, type];
}
