import 'package:equatable/equatable.dart';

class CallItem extends Equatable {
  final int id;
  final String name;
  final String number;

  const CallItem({required this.id, required this.name, required this.number});

  @override
  List<Object?> get props => [id, name, number];
}
