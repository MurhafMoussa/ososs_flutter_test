import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ososs_flutter_test/core/resources/spaces_manager.dart';
import 'package:ososs_flutter_test/features/home/presentation/manager/home_bloc.dart';

class ClearFieldsRow extends StatelessWidget {
  const ClearFieldsRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: () {
          context.read<HomeBloc>().add(const HomeEvent.textFieldEmptied());
        },
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(
              FontAwesomeIcons.trash,
              color: Colors.red,
            ),
            SpacesManager.w10,
            Text(
              'Clear text',
              style: Theme.of(context)
                  .textTheme
                  .titleLarge
                  ?.copyWith(color: Colors.red),
            )
          ],
        ),
      );
}
