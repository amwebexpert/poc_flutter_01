import 'package:flutter/material.dart';
import 'package:poc_flutter_01/features/pharmacies/pharmacies.screen.dart';

import 'features/pharmacy/pharmacy.screen.dart';
import 'service.locator.dart';
import 'services/logger/logger.service.dart';

Route? onGenerateRoute(RouteSettings settings) {
  final LoggerService logger = serviceLocator.get();

  Uri uriLink = extractUri(settings);

  switch (uriLink.path) {
    case '/':
      return MaterialPageRoute(builder: (_) => const PharmaciesScreen());

    case '/pharmacy':
      final String pharmacyId = settings.arguments?.toString() ?? '';
      return MaterialPageRoute(builder: (_) => PharmacyScreen(pharmacyId: pharmacyId));

    default:
      logger.error('Invalid navigation: ${settings.name}');
      return MaterialPageRoute(builder: (_) => const PharmaciesScreen());
  }
}

Uri extractUri(RouteSettings settings) {
  final LoggerService logger = serviceLocator.get()..info('Navigation to ${settings.name}');
  final uriLink = Uri.parse(settings.name ?? '/');

  if (uriLink.hasQuery) {
    logger.info('Navigation parameters: ${uriLink.queryParameters}');
  }

  return uriLink;
}
