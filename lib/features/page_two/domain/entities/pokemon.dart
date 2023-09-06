import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon.freezed.dart';

@freezed
class Pokemon with _$Pokemon {
  const factory Pokemon({
    required String pokemonName,
    required String pokemonImage,
  }) = _Pokemon;
}

@Freezed(makeCollectionsUnmodifiable: false)
class PokemonList with _$PokemonList {
  const factory PokemonList({
    required List<Pokemon> pokemons,
    required bool canLoadMore,
  }) = _PokemonList;
}
