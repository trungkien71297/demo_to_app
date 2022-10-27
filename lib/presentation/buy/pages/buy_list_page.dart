import 'package:demo_app/common/common_widgets.dart';
import 'package:demo_app/presentation/buy/bloc/buy_bloc.dart';
import 'package:demo_app/presentation/buy/widgets/buy_list_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BuyListPage extends StatelessWidget {
  static const route = 'buy_list_page';
  const BuyListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: createAppBar('BUY LIST'),
        body: Center(
          child: BlocBuilder(
            bloc: BlocProvider.of<BuyBloc>(context),
            builder: (context, state) {
              if (state is BuyInitial) {
                BlocProvider.of<BuyBloc>(context).add(BuyListFetch());
                return const SizedBox();
              } else if (state is BuyFetching) {
                return const CircularProgressIndicator();
              } else if (state is BuyFetched) {
                return BuyListWidget(items: state.items);
              }
              return const SizedBox();
            },
          ),
        ));
  }
}
