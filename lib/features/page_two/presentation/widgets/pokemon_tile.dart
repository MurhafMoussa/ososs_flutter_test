import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ososs_flutter_test/core/resources/spaces_manager.dart';
import 'package:ososs_flutter_test/features/page_two/domain/entities/pokemon.dart';

class PokemonTile extends StatelessWidget {
  const PokemonTile({
    super.key,
    required this.pokemon,
  });

  final Pokemon pokemon;

  @override
  Widget build(BuildContext context) => Card(
        elevation: 5,
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 10).h,
          height: 100.h,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CachedNetworkImage(
                imageUrl: pokemon.pokemonImage,
                placeholder: (context, url) => Container(
                  height: 100.h,
                  width: 100.h,
                  color: Colors.grey,
                  child: const Icon(Icons.image),
                ),
                errorWidget: (context, url, error) => const Icon(Icons.cancel),
                height: 100.h,
                width: 100.h,
                fit: BoxFit.cover,
              ),
              SpacesManager.w10,
              Text(
                pokemon.pokemonName,
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ],
          ),
        ),
      );
}
