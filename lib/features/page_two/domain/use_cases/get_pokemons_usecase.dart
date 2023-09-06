import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:ososs_flutter_test/core/errors/network_exceptions.dart';
import 'package:ososs_flutter_test/core/use_case/use_case.dart';
import 'package:ososs_flutter_test/features/page_two/domain/entities/pokemon.dart';
import 'package:ososs_flutter_test/features/page_two/domain/repositories/pokemon_repository.dart';

@Singleton()
class GetPokemonsUseCase implements UseCase<PokemonList, PokemonParams> {
  GetPokemonsUseCase(this._pokemonRepository);

  final PokemonRepository _pokemonRepository;
  @override
  Future<Either<NetworkExceptions, PokemonList>> call(
      PokemonParams params) async {
    final response = await _pokemonRepository.getPokemons(params);
    return response;
  }
}

class PokemonParams {
  const PokemonParams({required this.offset, required this.limit});

  final int offset;
  final int limit;
  Map<String, dynamic> toJson() => {
        'offset': offset,
        'limit': limit,
      };
}
