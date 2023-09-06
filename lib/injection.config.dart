// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i4;
import 'package:ososs_flutter_test/core/api/api_consumer.dart' as _i7;
import 'package:ososs_flutter_test/core/api/dio_consumer.dart' as _i8;
import 'package:ososs_flutter_test/core/api/logging_interceptor.dart' as _i5;
import 'package:ososs_flutter_test/core/network/netwok_info.dart' as _i6;
import 'package:ososs_flutter_test/core/third_party_injection.dart' as _i14;
import 'package:ososs_flutter_test/features/page_two/data/data_sources/pokemon_remote_data_source.dart'
    as _i9;
import 'package:ososs_flutter_test/features/page_two/data/repositories/pokemon_repository_imp.dart'
    as _i11;
import 'package:ososs_flutter_test/features/page_two/domain/repositories/pokemon_repository.dart'
    as _i10;
import 'package:ososs_flutter_test/features/page_two/domain/use_cases/get_pokemons_usecase.dart'
    as _i12;
import 'package:ososs_flutter_test/features/page_two/presentation/manager/pokemon_cubit.dart'
    as _i13;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final thirdPartyInjection = _$ThirdPartyInjection();
    gh.singleton<_i3.Dio>(thirdPartyInjection.dio);
    gh.singleton<_i4.InternetConnectionChecker>(
        thirdPartyInjection.internetConnectionChecker);
    gh.singleton<_i5.LoggingInterceptor>(_i5.LoggingInterceptor());
    gh.lazySingleton<_i6.NetworkInfo>(() => _i6.NetworkInfoImpl(
        connectionChecker: gh<_i4.InternetConnectionChecker>()));
    gh.singleton<_i7.ApiConsumer>(_i8.DioConsumer(gh<_i3.Dio>()));
    gh.singleton<_i9.PokemonRemoteDataSource>(
        _i9.PokemonRemoteDataSource(gh<_i7.ApiConsumer>()));
    gh.singleton<_i10.PokemonRepository>(_i11.PokemonRepositoryImplementation(
      gh<_i6.NetworkInfo>(),
      gh<_i9.PokemonRemoteDataSource>(),
    ));
    gh.singleton<_i12.GetPokemonsUseCase>(
        _i12.GetPokemonsUseCase(gh<_i10.PokemonRepository>()));
    gh.factory<_i13.PokemonCubit>(
        () => _i13.PokemonCubit(gh<_i12.GetPokemonsUseCase>()));
    return this;
  }
}

class _$ThirdPartyInjection extends _i14.ThirdPartyInjection {}
