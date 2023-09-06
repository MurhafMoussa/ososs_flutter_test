part of 'pokemon_cubit.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class PokemonState with _$PokemonState {
  const factory PokemonState.loading() = _Loading;
  const factory PokemonState.success(
      {required List<Pokemon> pokemons, required bool canLoadMore}) = _Success;
  const factory PokemonState.error(NetworkExceptions exception) = _Error;
}
