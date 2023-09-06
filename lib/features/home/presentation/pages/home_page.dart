import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:ososs_flutter_test/I10n/generated/l10n.dart';
import 'package:ososs_flutter_test/core/resources/app_routes_names.dart';
import 'package:ososs_flutter_test/core/resources/border_raduis_manager.dart';
import 'package:ososs_flutter_test/core/resources/color_manager.dart';
import 'package:ososs_flutter_test/core/resources/padding_manager.dart';
import 'package:ososs_flutter_test/core/resources/spaces_manager.dart';
import 'package:ososs_flutter_test/features/home/presentation/manager/home_bloc.dart';
import 'package:ososs_flutter_test/features/home/presentation/widgets/changeable_text.dart';
import 'package:ososs_flutter_test/features/home/presentation/widgets/clear_fields_row.dart';
import 'package:ososs_flutter_test/features/home/presentation/widgets/custom_filled_button.dart';
import 'package:ososs_flutter_test/features/home/presentation/widgets/custom_text_form_field.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(
            AppLocalizations.of(context).home,
          ),
        ),
        body: Padding(
          padding: PaddingManager.contentPaddingV15H20,
          child: Column(
            children: [
              const CustomTextFormField(),
              SpacesManager.h30,
              const ChangeableText(),
              const Spacer(),
              const ClearFieldsRow(),
              SpacesManager.h20,
              CustomFilledButton(
                content: AppLocalizations.of(context).goToPage1,
                onPressed: () async {
                  context.pushNamed(AppRoutesNames.pageOne);
                },
                backgroundColor: ColorManager.darkBlue,
              ),
              SpacesManager.h20,
              CustomFilledButton(
                content: AppLocalizations.of(context).goToPage2,
                onPressed: () async {
                  context.pushNamed(AppRoutesNames.pageTwo);
                },
                backgroundColor: ColorManager.lightBlue,
              ),
            ],
          ),
        ),
      );
}
