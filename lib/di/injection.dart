import 'package:demo_app/domain/buy/repositories/buy_repository.dart';
import 'package:demo_app/domain/buy/usescases/get_buy_list.dart';
import 'package:demo_app/domain/call/repositories/call_repository.dart';
import 'package:demo_app/domain/call/usecases/get_call_list.dart';
import 'package:demo_app/domain/sell/repositories/sell_repository.dart';
import 'package:demo_app/domain/sell/usescases/get_sell_list.dart';
import 'package:demo_app/infrastructure/buy/repositories/buy_repository_impl.dart';
import 'package:demo_app/infrastructure/call/repositories/call_repository_impl.dart';
import 'package:demo_app/infrastructure/sell/repositories/sell_repository_impl.dart';
import 'package:demo_app/presentation/buy/bloc/buy_bloc.dart';
import 'package:demo_app/presentation/call/bloc/call_bloc.dart';
import 'package:demo_app/presentation/sell/bloc/sell_bloc.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
void setupDI() {
  //Bloc
  getIt.registerFactory(() => CallBloc(getCallList: getIt()));
  getIt.registerFactory(() => SellBloc(getSellList: getIt()));
  getIt.registerFactory(() => BuyBloc(getBuyList: getIt()));
  //Usecase
  getIt.registerLazySingleton(() => GetCallList(getIt()));
  getIt.registerLazySingleton(() => GetBuyList(getIt()));
  getIt.registerLazySingleton(() => GetSellList(getIt()));
  //Repository
  getIt.registerLazySingleton<CallRepository>(() => CallRepositoryImpl());
  getIt.registerLazySingleton<BuyReposiory>(() => BuyRepositoryImpl());
  getIt.registerLazySingleton<SellRepository>(() => SellRepositoryImpl());
}
