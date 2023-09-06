import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ososs_flutter_test/features/page_two/domain/entities/pokemon.dart';

class PokemonModel {
  PokemonModel({required this.id, required this.name});

  factory PokemonModel.fromJson(Map<String, dynamic> json) {
    final name = json['name'];
    final url = json['url'] as String;

    ///getting the id from the url string
    final id = int.parse(url.split('/')[6]);

    return PokemonModel(id: id, name: name);
  }
  final int id;
  final String name;

  String get imageUrl =>
      'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/$id.png';
  Pokemon toEntity() => Pokemon(pokemonName: name, pokemonImage: imageUrl);
}

class PokemonListModel {
  PokemonListModel(
      {required this.pokemonListings, required this.canLoadNextPage});

  factory PokemonListModel.fromJson(Map<String, dynamic> json) {
    ///when the next parameter is not null this means that there are extra pages

    final canLoadNextPage = json['next'] != null;
    final pokemonListings = (json['results'] as List)
        .map((listingJson) => PokemonModel.fromJson(listingJson))
        .toList();

    return PokemonListModel(
        pokemonListings: pokemonListings, canLoadNextPage: canLoadNextPage);
  }
  final List<PokemonModel> pokemonListings;
  final bool canLoadNextPage;
  PokemonList toEntity() => PokemonList(
        pokemons: pokemonListings.map((e) => e.toEntity()).toList(),
        canLoadMore: canLoadNextPage,
      );
}
