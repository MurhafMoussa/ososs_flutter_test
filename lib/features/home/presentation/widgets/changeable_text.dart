import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ososs_flutter_test/I10n/generated/l10n.dart';
import 'package:ososs_flutter_test/features/home/presentation/manager/home_bloc.dart';

class ChangeableText extends StatelessWidget {
  const ChangeableText({
    super.key,
  });

  @override
  Widget build(BuildContext context) => DefaultTextStyle(
        style: Theme.of(context).textTheme.titleLarge!,
        child: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) => state.when(
            initial: () => Text(AppLocalizations.of(context).yourName),
            textFieldIsFull: (text) => Text(text),
            textFieldIsEmpty: () => Text(AppLocalizations.of(context).yourName),
          ),
        ),
      );
}
