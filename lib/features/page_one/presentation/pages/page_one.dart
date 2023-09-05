import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ososs_flutter_test/I10n/generated/l10n.dart';
import 'package:ososs_flutter_test/core/resources/padding_manager.dart';
import 'package:ososs_flutter_test/core/resources/spaces_manager.dart';
import 'package:ososs_flutter_test/features/home/presentation/widgets/changeable_text.dart';
import 'package:ososs_flutter_test/features/page_one/presentation/manager/shape_cubit.dart';
import 'package:ososs_flutter_test/features/page_one/presentation/widgets/selected_shape.dart';
import 'package:ososs_flutter_test/features/page_one/presentation/widgets/shape_choices_row.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) => BlocProvider<ShapeCubit>(
        create: (context) => ShapeCubit(),
        child: Builder(
          builder: (context) => Scaffold(
            appBar: AppBar(
              title: Text(AppLocalizations.of(context).animation),
            ),
            body: Padding(
              padding: PaddingManager.contentPaddingV15H20,
              child: Column(
                children: [
                  SpacesManager.h20,

                  /// the state of the changeable text is preserved due to
                  /// making the home bloc global so no need to do any thing here
                  const ChangeableText(),
                  SpacesManager.h30,
                  const SelectedShape(),
                  const Spacer(),

                  ///these are the shapes that the user select a shape from
                  const ShapeChoicesRow(),
                ],
              ),
            ),
          ),
        ),
      );
}
