import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:ososs_flutter_test/core/errors/network_exceptions.dart';
import 'package:ososs_flutter_test/core/network/netwok_info.dart';
import 'package:ososs_flutter_test/features/page_two/data/data_sources/pokemon_remote_data_source.dart';
import 'package:ososs_flutter_test/features/page_two/domain/entities/pokemon.dart';
import 'package:ososs_flutter_test/features/page_two/domain/repositories/pokemon_repository.dart';
import 'package:ososs_flutter_test/features/page_two/domain/use_cases/get_pokemons_usecase.dart';

@Singleton(as: PokemonRepository)
class PokemonRepositoryImplementation implements PokemonRepository {
  PokemonRepositoryImplementation(
    this._networkInfo,
    this._pokemonRemoteDataSource,
  );

  final NetworkInfo _networkInfo;
  final PokemonRemoteDataSource _pokemonRemoteDataSource;
  @override
  Future<Either<NetworkExceptions, PokemonList>> getPokemons(
      PokemonParams params) async {
    if (await _networkInfo.isConnected) {
      try {
        final response = await _pokemonRemoteDataSource.getPokemons(params);
        return Right(response.toEntity());
      } on Exception catch (e) {
        return Left(
          NetworkExceptions.getException(e),
        );
      }
    } else {
      return const Left(NetworkExceptions.noInternetConnection());
    }
  }
}
