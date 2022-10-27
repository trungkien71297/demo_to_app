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
          child: BlocConsumer(
            bloc: BlocProvider.of<BuyBloc>(context),
            listener: (context, state) {
              if (state is BuyError) {
                ScaffoldMessenger.of(context)
                  ..removeCurrentSnackBar()
                  ..showSnackBar(SnackBar(content: Text(state.message)));
              } else if (state is BuyFetched) {
                ScaffoldMessenger.of(context).removeCurrentSnackBar();
              }
            },
            builder: (context, state) {
              if (state is BuyInitial) {
                BlocProvider.of<BuyBloc>(context).add(BuyListFetch());
                return const SizedBox();
              } else if (state is BuyFetching) {
                return const CircularProgressIndicator();
              } else if (state is BuyFetched) {
                return BuyListWidget(items: state.items);
              } else if (state is BuyError) {
                return ElevatedButton(
                    onPressed: () =>
                        BlocProvider.of<BuyBloc>(context).add(BuyListFetch()),
                    child: const Icon(Icons.refresh));
              }
              return const SizedBox();
            },
          ),
        ));
  }
}
