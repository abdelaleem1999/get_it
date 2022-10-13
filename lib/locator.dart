import 'package:get_it/get_it.dart';
import 'package:package_get_it/repository/model_controller.dart';

import 'repository/controller.dart';
final GetIt getIt = GetIt.instance;

void setup() {
  getIt.registerLazySingleton<controller>(
    () => controller(),
  );
  getIt.registerLazySingleton<Receive_Controller>(
    () => Receive_Controller(),
  );
}
