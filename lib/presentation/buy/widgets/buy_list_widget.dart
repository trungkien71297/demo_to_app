import 'package:demo_app/domain/buy/entities/buy_item.dart';
import 'package:demo_app/presentation/buy/widgets/buy_item_tile_widget.dart';
import 'package:flutter/material.dart';

class BuyListWidget extends StatelessWidget {
  const BuyListWidget({super.key, required this.items});

  final List<BuyItem> items;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: ((context, index) {
          return BuyItemTileWidget(item: items[index]);
        }),
        separatorBuilder: ((context, index) => const Divider(
              height: 1,
            )),
        itemCount: items.length);
  }
}
