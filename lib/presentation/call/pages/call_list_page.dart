import 'package:demo_app/common/common_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CallListPage extends StatelessWidget {
  static const route = 'call_list_page';
  const CallListPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: createAppBar('CALL LIST'),
        body: ListView.separated(
          itemCount: 3,
          itemBuilder: (context, index) {
            return const ListTile(
              title: Text('Name: Jason white'),
              subtitle: Text('Number: 234567890'),
            );
          },
          separatorBuilder: (BuildContext context, int index) => const Divider(
            height: 1,
          ),
        ));
  }
}
