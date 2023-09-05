import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ososs_flutter_test/features/page_one/presentation/manager/shape_cubit.dart';

class SelectedShape extends StatelessWidget {
  const SelectedShape({
    super.key,
  });

  @override
  Widget build(BuildContext context) => BlocBuilder<ShapeCubit, ShapeState>(
        /// there is no need to use anything fancy here ... just an animated container
        /// can do the job
        builder: (context, state) => AnimatedContainer(
          duration: const Duration(
            milliseconds: 1,
          ),
          width: double.infinity,
          height: MediaQuery.maybeOf(context)!.size.height / 2.5,
          decoration: ShapeDecoration(
            shape: state.shape,
            color: state.color,
          ),
        ),
      );
}
