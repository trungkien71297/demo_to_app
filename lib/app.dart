import 'package:demo_app/presentation/buy/pages/buy_list_page.dart';
import 'package:demo_app/presentation/call/pages/call_list_page.dart';
import 'package:demo_app/presentation/home_page.dart';
import 'package:demo_app/presentation/sell/pages/sell_list_page.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: HomePage.route,
      routes: {
        HomePage.route: (context) => const HomePage(),
        CallListPage.route: (context) => const CallListPage(),
        SellListPage.route: (context) => const SellListPage(),
        BuyListPage.route: (context) => const BuyListPage()
      },
    );
  }
}
