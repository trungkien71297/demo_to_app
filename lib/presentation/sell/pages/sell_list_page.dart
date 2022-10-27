import 'package:demo_app/common/common_widgets.dart';
import 'package:demo_app/presentation/sell/bloc/sell_bloc.dart';
import 'package:demo_app/presentation/sell/widgets/sell_list_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SellListPage extends StatelessWidget {
  static const route = 'sell_list_page';
  const SellListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: createAppBar('SELL LIST'),
      body: Center(
        child: BlocConsumer(
          bloc: BlocProvider.of<SellBloc>(context),
          listener: (context, state) {
            if (state is SellError) {
              ScaffoldMessenger.of(context)
                ..removeCurrentSnackBar()
                ..showSnackBar(SnackBar(content: Text(state.message)));
            } else if (state is SellFetched) {
              ScaffoldMessenger.of(context).removeCurrentSnackBar();
            }
          },
          builder: (context, state) {
            if (state is SellInitial) {
              BlocProvider.of<SellBloc>(context).add(SellListFetch());
              return const CircularProgressIndicator();
            } else if (state is SellFetching) {
              return const CircularProgressIndicator();
            } else if (state is SellFetched) {
              return SellListWidget(items: state.items);
            } else if (state is SellError) {
              return ElevatedButton(
                  onPressed: () =>
                      BlocProvider.of<SellBloc>(context).add(SellListFetch()),
                  child: const Icon(Icons.refresh));
            } else {
              return const SizedBox();
            }
          },
        ),
      ),
    );
  }
}
