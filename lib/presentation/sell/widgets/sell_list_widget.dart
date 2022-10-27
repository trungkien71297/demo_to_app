import 'package:demo_app/domain/sell/entities/sell_item.dart';
import 'package:demo_app/presentation/sell/widgets/sell_item_tile_widget.dart';
import 'package:flutter/material.dart';

class SellListWidget extends StatelessWidget {
  const SellListWidget({super.key, required this.items});
  final List<SellItem> items;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: ((context, index) {
          return SellItemTileWidget(item: items[index]);
        }),
        separatorBuilder: ((context, index) => const Divider(
              height: 1,
            )),
        itemCount: items.length);
  }
}
