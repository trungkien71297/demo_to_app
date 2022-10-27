import 'package:demo_app/common/common_widgets.dart';
import 'package:demo_app/presentation/call/bloc/call_bloc.dart';
import 'package:demo_app/presentation/call/widgets/call_list_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CallListPage extends StatelessWidget {
  static const route = 'call_list_page';
  const CallListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: createAppBar('CALL LIST'),
        body: Center(
          child: BlocConsumer(
              bloc: BlocProvider.of<CallBloc>(context),
              listener: (context, state) {
                if (state is CallError) {
                  ScaffoldMessenger.of(context)
                    ..removeCurrentSnackBar()
                    ..showSnackBar(SnackBar(content: Text(state.message)));
                } else if (state is CallFetched) {
                  ScaffoldMessenger.of(context).removeCurrentSnackBar();
                }
              },
              builder: ((context, state) {
                if (state is CallInitial) {
                  BlocProvider.of<CallBloc>(context).add(CallListFetch());
                  return const CircularProgressIndicator();
                } else if (state is CallFetching) {
                  return const CircularProgressIndicator();
                } else if (state is CallFetched) {
                  return CallListWidget(list: state.callList);
                } else if (state is CallError) {
                  return ElevatedButton(
                      onPressed: () => BlocProvider.of<CallBloc>(context)
                          .add(CallListFetch()),
                      child: const Icon(Icons.refresh));
                } else {
                  return const SizedBox();
                }
              })),
        ));
  }
}
