import 'package:demo_app/domain/call/entities/call_item.dart';
import 'package:flutter/material.dart';

class CallItemWidget extends StatelessWidget {
  final CallItem item;

  const CallItemWidget({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('Name: ${item.name}'),
      subtitle: Text('Number: ${item.number}'),
    );
  }
}
