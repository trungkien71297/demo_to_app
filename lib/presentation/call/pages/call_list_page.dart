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
          child: BlocBuilder(
              bloc: BlocProvider.of<CallBloc>(context),
              builder: ((context, state) {
                if (state is CallInitial) {
                  BlocProvider.of<CallBloc>(context).add(CallListFetch());
                  return const CircularProgressIndicator();
                } else if (state is CallFetching) {
                  return const CircularProgressIndicator();
                } else if (state is CallFetched) {
                  return CallListWidget(list: state.callList);
                } else {
                  return const SizedBox();
                }
              })),
        ));
  }
}
