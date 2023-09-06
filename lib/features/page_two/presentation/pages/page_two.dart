import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ososs_flutter_test/I10n/generated/l10n.dart';
import 'package:ososs_flutter_test/core/errors/network_exceptions.dart';
import 'package:ososs_flutter_test/core/resources/padding_manager.dart';
import 'package:ososs_flutter_test/features/page_two/presentation/manager/pokemon_cubit.dart';
import 'package:ososs_flutter_test/features/page_two/presentation/widgets/custom_pagination_widget.dart';
import 'package:ososs_flutter_test/features/page_two/presentation/widgets/pokemon_tile.dart';
import 'package:ososs_flutter_test/injection.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) => BlocProvider<PokemonCubit>(
        create: (context) => getIt<PokemonCubit>()..getAllPokemons(),
        child: Scaffold(
          appBar: AppBar(
            title: Text(AppLocalizations.of(context).pokemons),
          ),
          body: Builder(
            builder: (context) {
              final pokemonCubitContext = context.read<PokemonCubit>();
              return BlocConsumer<PokemonCubit, PokemonState>(
                listener: (context, state) =>
                    state.whenOrNull(success: (_, canLoadMoreData) {
                  pokemonCubitContext.refreshController.refreshCompleted();
                  if (!canLoadMoreData) {
                    pokemonCubitContext.refreshController.loadNoData();
                  } else {
                    pokemonCubitContext.refreshController.loadComplete();
                  }
                }),
                builder: (context, state) => state.when(
                  loading: () => const Center(
                    child: CircularProgressIndicator(),
                  ),
                  success: (pokemons, canLoadMore) => CustomPaginationWidget(
                    refreshController: pokemonCubitContext.refreshController,
                    onLoading: () async {
                      pokemonCubitContext.getAllPokemons();
                    },
                    listTobePaginated: ListView.builder(
                      padding: PaddingManager.contentPaddingV15H20,
                      itemCount: pokemons.length,
                      itemBuilder: (context, index) {
                        final pokemon = pokemons[index];
                        return PokemonTile(pokemon: pokemon);
                      },
                    ),
                  ),
                  error: (exception) => Center(
                    child: Text(
                      NetworkExceptions.getErrorMessage(exception),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      );
}
