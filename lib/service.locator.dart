import 'package:get_it/get_it.dart';
import 'package:poc_flutter_01/services/pharmacies/pharmacy.service.dart';

import 'services/file/file.service.dart';
import 'services/logger/logger.service.dart';

final serviceLocator = GetIt.instance;

Future<GetIt> initServiceLocator() async {
  serviceLocator
    ..registerSingleton<LoggerService>(LoggerService())
    ..registerSingleton<FileService>(FileService())
    ..registerSingleton<PharmacyService>(PharmacyService());

  await serviceLocator.allReady();

  return serviceLocator;
}
