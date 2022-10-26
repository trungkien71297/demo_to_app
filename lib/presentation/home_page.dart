import 'package:demo_app/common/common_widgets.dart';
import 'package:demo_app/presentation/buy/pages/buy_list_page.dart';
import 'package:demo_app/presentation/call/pages/call_list_page.dart';
import 'package:demo_app/presentation/sell/pages/sell_list_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static const route = 'home_page';
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: createAppBar('Home'),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            OutlinedButton(
                onPressed: (() =>
                    Navigator.of(context).pushNamed(CallListPage.route)),
                child: const Text('Call list')),
            TextButton(
              onPressed: () =>
                  Navigator.of(context).pushNamed(BuyListPage.route),
              child: const Text('Buy list'),
            ),
            ElevatedButton(
                onPressed: (() =>
                    Navigator.of(context).pushNamed(SellListPage.route)),
                child: const Text('Sell list'))
          ],
        ),
      ),
    );
  }
}
