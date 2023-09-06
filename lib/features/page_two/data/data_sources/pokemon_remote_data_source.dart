import 'package:injectable/injectable.dart';
import 'package:ososs_flutter_test/core/api/api_consumer.dart';
import 'package:ososs_flutter_test/core/api/end_points.dart';
import 'package:ososs_flutter_test/features/page_two/data/models/pokemon_model.dart';
import 'package:ososs_flutter_test/features/page_two/domain/use_cases/get_pokemons_usecase.dart';

@singleton
class PokemonRemoteDataSource {
  PokemonRemoteDataSource(this._apiConsumer);

  final ApiConsumer _apiConsumer;
  Future<PokemonListModel> getPokemons(PokemonParams params) async {
    final response = await _apiConsumer.get(
      EndPoints.getPokemons,
      queryParameters: params.toJson(),
    );
    return PokemonListModel.fromJson(response);
  }
}
