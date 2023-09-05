import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:ososs_flutter_test/core/resources/app_routes_names.dart';
import 'package:ososs_flutter_test/features/splash/presentation/manager/splash_cubit.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) => BlocProvider<SplashCubit>(
        create: (context) => SplashCubit(),
        child: Builder(
          builder: (context) => BlocListener<SplashCubit, SplashState>(
            listener: (context, state) {
              state.whenOrNull(
                timeToNavigateToHome: () =>
                    context.goNamed(AppRoutesNames.home),
              );
            },
            child: Scaffold(
              body: Center(
                child: FlutterLogo(
                  size: 200.h,
                ),
              ),
            ),
          ),
        ),
      );
}
