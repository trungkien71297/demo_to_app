part of 'call_bloc.dart';

abstract class CallState extends Equatable {
  const CallState();

  @override
  List<Object> get props => [];
}

class CallInitial extends CallState {
  const CallInitial() : super();
}

class CallFetching extends CallState {}

class CallFetched extends CallState {
  final List<CallItem> callList;
  const CallFetched(this.callList) : super();

  @override
  List<Object> get props => [callList];
}

class CallError extends CallState {
  final String message;
  const CallError({required this.message});

  @override
  List<Object> get props => [message];
}
