// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/bloc/coins_bloc.dart' as _i8;
import 'domain/repository/i_coin_repository.dart' as _i5;
import 'domain/usecase/get_meta_coins_list.dart' as _i7;
import 'infrastructure/data/coin_remote_data_source.dart' as _i4;
import 'infrastructure/injection_module.dart' as _i9;
import 'infrastructure/repository/coin_repository.dart' as _i6;

const String _prod = 'prod';
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final injectableModule = _$InjectableModule();
  gh.lazySingleton<_i3.Dio>(() => injectableModule.dio);
  gh.factory<_i4.ICoinRemoteDataSource>(
      () => _i4.CoinRemoteDataSource(get<_i3.Dio>()),
      registerFor: {_prod});
  gh.factory<_i5.ICoinRepo>(
      () => _i6.CoinRepo(get<_i4.ICoinRemoteDataSource>()),
      registerFor: {_prod});
  gh.factory<_i7.GetAllCoins>(() => _i7.GetAllCoins(get<_i5.ICoinRepo>()),
      registerFor: {_prod});
  gh.factory<_i8.CoinsBloc>(() => _i8.CoinsBloc(get<_i7.GetAllCoins>()),
      registerFor: {_prod});
  return get;
}

class _$InjectableModule extends _i9.InjectableModule {}
