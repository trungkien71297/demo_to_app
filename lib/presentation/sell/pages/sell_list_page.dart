import 'package:demo_app/common/common_widgets.dart';
import 'package:flutter/material.dart';

class SellListPage extends StatelessWidget {
  static const route = 'sell_list_page';
  const SellListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: createAppBar('SELL LIST'),
      body: const Center(
        child: Text('Sell list'),
      ),
    );
  }
}
