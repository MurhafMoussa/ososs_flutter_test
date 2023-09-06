import 'package:dartz/dartz.dart';
import 'package:ososs_flutter_test/core/errors/network_exceptions.dart';
import 'package:ososs_flutter_test/features/page_two/domain/entities/pokemon.dart';
import 'package:ososs_flutter_test/features/page_two/domain/use_cases/get_pokemons_usecase.dart';

abstract class PokemonRepository {
  Future<Either<NetworkExceptions, PokemonList>> getPokemons(
      PokemonParams params);
}
