import 'package:demo_app/domain/call/entities/call_item.dart';
import 'package:demo_app/presentation/call/widgets/call_item_widget.dart';
import 'package:flutter/material.dart';

class CallListWidget extends StatelessWidget {
  final List<CallItem> list;

  const CallListWidget({super.key, required this.list});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index) => CallItemWidget(item: list[index]),
        separatorBuilder: (context, index) => const Divider(
              height: 1,
            ),
        itemCount: list.length);
  }
}
