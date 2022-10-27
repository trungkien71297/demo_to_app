part of 'sell_bloc.dart';

abstract class SellState extends Equatable {
  const SellState();

  @override
  List<Object> get props => [];
}

class SellInitial extends SellState {}

class SellFetching extends SellState {}

class SellFetched extends SellState {
  final List<SellItem> items;

  const SellFetched(this.items);

  @override
  List<Object> get props => [items];
}
