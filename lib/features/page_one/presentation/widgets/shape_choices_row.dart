import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ososs_flutter_test/features/page_one/presentation/manager/shape_cubit.dart';

import 'shape_choice.dart';

class ShapeChoicesRow extends StatelessWidget {
  const ShapeChoicesRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ShapeChoice.sharpSquare(
            onTap: () {
              context.read<ShapeCubit>().selectShape(
                    Shape.sharpSquare,
                  );
            },
          ),
          ShapeChoice.roundedSquare(
            onTap: () {
              context.read<ShapeCubit>().selectShape(
                    Shape.roundedSquare,
                  );
            },
          ),
          ShapeChoice.circle(
            onTap: () {
              context.read<ShapeCubit>().selectShape(
                    Shape.circle,
                  );
            },
          ),
        ],
      );
}
