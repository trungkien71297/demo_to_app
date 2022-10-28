import 'package:demo_app/common/constants.dart';
import 'package:demo_app/common/database.dart';
import 'package:demo_app/domain/buy/repositories/buy_repository.dart';
import 'package:demo_app/domain/buy/usescases/get_buy_list.dart';
import 'package:demo_app/domain/call/repositories/call_repository.dart';
import 'package:demo_app/domain/call/usecases/get_call_list.dart';
import 'package:demo_app/domain/sell/repositories/sell_repository.dart';
import 'package:demo_app/domain/sell/usescases/get_sell_list.dart';
import 'package:demo_app/infrastructure/buy/datasource/buy_remote_datasource.dart';
import 'package:demo_app/infrastructure/buy/repositories/buy_repository_impl.dart';
import 'package:demo_app/infrastructure/call/datasources/call_remote_datasource.dart';
import 'package:demo_app/infrastructure/call/repositories/call_repository_impl.dart';
import 'package:demo_app/infrastructure/sell/datasources/sell_local_datasrouce.dart';
import 'package:demo_app/infrastructure/sell/models/sell_item_model.dart';
import 'package:demo_app/infrastructure/sell/repositories/sell_repository_impl.dart';
import 'package:demo_app/presentation/buy/bloc/buy_bloc.dart';
import 'package:demo_app/presentation/call/bloc/call_bloc.dart';
import 'package:demo_app/presentation/sell/bloc/sell_bloc.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:sqflite/sql.dart';

final getIt = GetIt.instance;
Future<void> setupDI() async {
  //Bloc
  getIt.registerFactory(() => CallBloc(getCallList: getIt()));
  getIt.registerFactory(() => SellBloc(getSellList: getIt()));
  getIt.registerFactory(() => BuyBloc(getBuyList: getIt()));
  //Usecase
  getIt.registerLazySingleton(() => GetCallList(getIt()));
  getIt.registerLazySingleton(() => GetBuyList(getIt()));
  getIt.registerLazySingleton(() => GetSellList(getIt()));
  //Repository
  getIt.registerLazySingleton<CallRepository>(
      () => CallRepositoryImpl(callRemoteDataSource: getIt()));
  getIt.registerLazySingleton<BuyReposiory>(
      () => BuyRepositoryImpl(remoteDatasource: getIt()));
  getIt.registerLazySingleton<SellRepository>(
      () => SellRepositoryImpl(sellLocalDatasource: getIt()));

  //datasource
  getIt.registerLazySingleton<CallRemoteDataSource>(
      () => CallRemoteDataSourceImpl(getIt()));

  getIt.registerLazySingleton<BuyRemoteDatasource>(
      () => BuyRemoteDatasourceImpl(getIt()));

  getIt.registerLazySingleton<SellLocalDatasource>(
      () => SellLocalDatasourceImpl(getIt()));

  // client
  getIt.registerLazySingleton(() {
    var client = Dio(BaseOptions(
        baseUrl: ApiConstant.baseURL,
        connectTimeout: ApiConstant.connectionTimeout,
        receiveTimeout: ApiConstant.receiveTimeout,
        sendTimeout: ApiConstant.sendTimeout));
    return client;
  });

  //database
  var provider = DemoDBprovider(1);
  await provider.openDataBase(SqfliteConstant.migrations);
  var batch = provider.db.batch();
  batch.insert(
      SellItemModel.table,
      const SellItemModel(
              id: 1, name: 'iPhone 14', price: 40000000, quantity: 1, type: 1)
          .toJson(),
      conflictAlgorithm: ConflictAlgorithm.rollback);
  batch.insert(
      SellItemModel.table,
      const SellItemModel(
              id: 2,
              name: 'Samsung Galaxy Z Fold 4',
              price: 45000000,
              quantity: 2,
              type: 2)
          .toJson(),
      conflictAlgorithm: ConflictAlgorithm.rollback);
  batch.insert(
      SellItemModel.table,
      const SellItemModel(
              id: 3, name: 'Xe lăn', price: 150000, quantity: 4, type: 3)
          .toJson(),
      conflictAlgorithm: ConflictAlgorithm.rollback);
  await batch.commit();
  getIt.registerLazySingleton(() => provider);
}
