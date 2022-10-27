import 'package:demo_app/common/usecase.dart';
import 'package:demo_app/domain/buy/entities/buy_item.dart';
import 'package:demo_app/domain/buy/usescases/get_buy_list.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'buy_event.dart';
part 'buy_state.dart';

class BuyBloc extends Bloc<BuyEvent, BuyState> {
  final GetBuyList _getBuyList;

  BuyBloc({required GetBuyList getBuyList})
      : _getBuyList = getBuyList,
        super(BuyInitial()) {
    on<BuyEvent>((event, emit) {});
    on<BuyListFetch>(_onFetchBuyList);
  }

  Future<void> _onFetchBuyList(
      BuyListFetch event, Emitter<BuyState> emit) async {
    emit(BuyFetching());
    var list = await _getBuyList(NoParams());
    emit(BuyFetched(list));
  }
}
