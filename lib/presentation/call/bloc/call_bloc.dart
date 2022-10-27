import 'dart:async';

import 'package:demo_app/common/usecase.dart';
import 'package:demo_app/domain/call/entities/call_item.dart';
import 'package:demo_app/domain/call/usecases/get_call_list.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'call_event.dart';
part 'call_state.dart';

class CallBloc extends Bloc<CallEvent, CallState> {
  final GetCallList _getCallList;

  CallBloc({required GetCallList getCallList})
      : _getCallList = getCallList,
        super(const CallInitial()) {
    on<CallListFetch>(_onCallListFetch);
  }

  Future<void> _onCallListFetch(
      CallListFetch event, Emitter<CallState> emit) async {
    emit(CallFetching());
    var list = await _getCallList(NoParams());
    emit(CallFetched(list));
  }
}
