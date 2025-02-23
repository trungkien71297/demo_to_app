part of 'buy_bloc.dart';

abstract class BuyState extends Equatable {
  const BuyState();

  @override
  List<Object> get props => [];
}

class BuyInitial extends BuyState {}

class BuyFetching extends BuyState {}

class BuyFetched extends BuyState {
  final List<BuyItem> items;

  const BuyFetched(this.items);

  @override
  List<Object> get props => [items];
}

class BuyError extends BuyState {
  final String message;
  const BuyError({required this.message});

  @override
  List<Object> get props => [message];
}
