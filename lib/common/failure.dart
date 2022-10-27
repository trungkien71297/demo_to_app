import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  final String message;

  const Failure({required this.message});
  @override
  List<Object?> get props => [message];
}

class UnknownFailure extends Failure {
  const UnknownFailure({required super.message});
}

class NetWorkFailure extends Failure {
  const NetWorkFailure({required super.message});
}
