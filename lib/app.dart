import 'package:demo_app/di/injection.dart';
import 'package:demo_app/presentation/buy/bloc/buy_bloc.dart';
import 'package:demo_app/presentation/buy/pages/buy_list_page.dart';
import 'package:demo_app/presentation/call/bloc/call_bloc.dart';
import 'package:demo_app/presentation/call/pages/call_list_page.dart';
import 'package:demo_app/presentation/home_page.dart';
import 'package:demo_app/presentation/sell/bloc/sell_bloc.dart';
import 'package:demo_app/presentation/sell/pages/sell_list_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: HomePage.route,
      routes: {
        HomePage.route: (context) => const HomePage(),
        CallListPage.route: (context) => BlocProvider<CallBloc>(
              create: (context) => getIt(),
              child: const CallListPage(),
            ),
        SellListPage.route: (context) => BlocProvider<SellBloc>(
              create: (context) => getIt(),
              child: const SellListPage(),
            ),
        BuyListPage.route: (context) => BlocProvider<BuyBloc>(
              create: (context) => getIt(),
              child: const BuyListPage(),
            ),
      },
    );
  }
}
