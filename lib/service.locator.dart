import 'package:get_it/get_it.dart';

import 'services/file/file.service.dart';
import 'services/logger/logger.service.dart';

final serviceLocator = GetIt.instance;

Future<GetIt> initServiceLocator() async {
  serviceLocator
    ..registerLazySingletonAsync<LoggerService>(() async => LoggerService())
    ..registerSingletonWithDependencies<FileService>(() => FileService(), dependsOn: [LoggerService]);

  return serviceLocator;
}
