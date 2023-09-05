import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ososs_flutter_test/I10n/generated/l10n.dart';
import 'package:ososs_flutter_test/bloc_observer.dart';
import 'package:ososs_flutter_test/core/resources/routes_manger.dart';
import 'package:ososs_flutter_test/core/resources/strings_manager.dart';
import 'package:ososs_flutter_test/core/resources/theme_manager.dart';
import 'package:ososs_flutter_test/injection.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ),
  );
  await configureDependencies();
  Bloc.observer = const AppBlocObserver();
  runApp(const Ososs());
}

class Ososs extends StatefulWidget {
  const Ososs({super.key});

  @override
  State<Ososs> createState() => _OsossState();
}

class _OsossState extends State<Ososs> {
  final RoutesManager routesManager = RoutesManager();

  @override
  Widget build(BuildContext context) => ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, widget) => MaterialApp.router(
          onGenerateTitle: (BuildContext context) =>
              AppLocalizations.of(context).appTitle,
          localizationsDelegates: const <LocalizationsDelegate<dynamic>>[
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: const [
            Locale(StringsManager.english),
          ],
          debugShowCheckedModeBanner: false,
          color: Colors.white,
          theme: getApplicationThemeData(),
          routerConfig: routesManager.router,
        ),
      );
}
