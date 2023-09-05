import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ososs_flutter_test/I10n/generated/l10n.dart';
import 'package:ososs_flutter_test/features/home/presentation/manager/home_bloc.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
  });

  @override
  Widget build(BuildContext context) => TextFormField(
        decoration: InputDecoration(
            hintText: AppLocalizations.of(context).enterYourName),
        controller: context.read<HomeBloc>().controller,
        onChanged: (value) => context.read<HomeBloc>().add(
              HomeEvent.textFieldFilled(value),
            ),
      );
}
