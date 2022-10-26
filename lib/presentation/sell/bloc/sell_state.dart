part of 'sell_bloc.dart';

abstract class SellState extends Equatable {
  const SellState();
  
  @override
  List<Object> get props => [];
}

class SellInitial extends SellState {}
