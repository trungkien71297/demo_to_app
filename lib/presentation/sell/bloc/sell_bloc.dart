import 'package:demo_app/common/usecase.dart';
import 'package:demo_app/domain/sell/entities/sell_item.dart';
import 'package:demo_app/domain/sell/usescases/get_sell_list.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'sell_event.dart';
part 'sell_state.dart';

class SellBloc extends Bloc<SellEvent, SellState> {
  final GetSellList _getSellList;

  SellBloc({required GetSellList getSellList})
      : _getSellList = getSellList,
        super(SellInitial()) {
    on<SellEvent>((event, emit) {});
    on<SellListFetch>(_onSellListFetch);
  }

  Future<void> _onSellListFetch(
      SellListFetch event, Emitter<SellState> emit) async {
    emit(SellFetching());
    var result = await _getSellList(NoParams());
    result.fold((l) => emit(SellError(message: l.message)),
        (r) => emit(SellFetched(r)));
  }
}
