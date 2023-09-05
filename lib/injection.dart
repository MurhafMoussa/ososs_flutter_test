import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:ososs_flutter_test/injection.config.dart';
import 'package:path_provider/path_provider.dart';

final GetIt getIt = GetIt.instance;

@InjectableInit(
  initializerName: 'init',
)
Future<void> configureDependencies() async {
  getIt.init();

  final appDocumentsDirectory = await getApplicationDocumentsDirectory();
  //ToDo check if there is something to be cached
  // Hive
  //   ..init(appDocumentsDirectory.path)
  //   ..registerAdapter(UserAdapter())
  //   ..registerAdapter(UserModelAdapter())
  //   ..registerAdapter(
  //     CurrentMoodAdapter(),
  //   );
}
