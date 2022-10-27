import 'package:demo_app/domain/sell/entities/sell_item.dart';
import 'package:flutter/material.dart';

class SellItemTileWidget extends StatelessWidget {
  const SellItemTileWidget({super.key, required this.item});
  final SellItem item;
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
