import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:ososs_flutter_test/core/errors/network_exceptions.dart';
import 'package:ososs_flutter_test/features/page_two/domain/entities/pokemon.dart';
import 'package:ososs_flutter_test/features/page_two/domain/use_cases/get_pokemons_usecase.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

part 'pokemon_state.dart';
part 'pokemon_cubit.freezed.dart';

const limit = 20;
const initialPage = 0;

@injectable
class PokemonCubit extends Cubit<PokemonState> {
  PokemonCubit(this._getPokemonsUseCase) : super(const PokemonState.loading());
  final GetPokemonsUseCase _getPokemonsUseCase;

  int currentPage = initialPage;
  bool canLoadMoreData = true;
  Future<void> getAllPokemons() async {
    /// simple condition to check if we reached the last page so we dont
    /// make extra api calls
    if (!canLoadMoreData) {
      return;
    }
    PokemonParams params =
        PokemonParams(offset: limit * currentPage, limit: limit);
    final response = await _getPokemonsUseCase(params);
    response.fold(
      (l) => emit(PokemonState.error(l)),
      (pokemonList) {
        canLoadMoreData = pokemonList.canLoadMore;

        ///after each successful api call we increase the current page
        currentPage++;
        emit(
          PokemonState.success(
            pokemons: state.maybeWhen(
              ///this case represents when calling the api for the first time
              ///the state list will be empty so we directly add the incoming data
              ///to the empty list
              orElse: () => [...pokemonList.pokemons],

              ///this case represents the state when it contains pokemons so we
              ///add the incoming pokemons to the existing ones
              success: (pokemons, _) => [...pokemons, ...pokemonList.pokemons],
            ),
            canLoadMore: canLoadMoreData,
          ),
        );
      },
    );
  }

  final RefreshController refreshController = RefreshController();
  @override
  Future<void> close() {
    refreshController.dispose();
    return super.close();
  }
}
