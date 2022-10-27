import 'package:demo_app/domain/buy/entities/buy_item.dart';
import 'package:flutter/material.dart';

class BuyItemTileWidget extends StatelessWidget {
  const BuyItemTileWidget({super.key, required this.item});
  final BuyItem item;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        height: 100,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Name: ${item.name}'),
              Text('Price: ${item.price}'),
              Text('Quantity: ${item.quantity}'),
            ],
          ),
        ),
      ),
    );
  }
}
