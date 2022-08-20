import 'dart:convert' as convert;
import 'package:flutter/services.dart' show rootBundle;

import '../../service.locator.dart';
import '../file/file.service.dart';
import '../logger/logger.service.dart';
import 'pharmacy.key/pharmacy.key.model.dart';

class PharmacyService {
  final LoggerService logger = serviceLocator.get();
  final FileService fileService = serviceLocator.get();

  static final PharmacyService _instance = PharmacyService._privateConstructor();
  static const String filename = 'assets/data/pharmacies.json';

  // internal service cache
  List<PharmacyKey> _pharmacies = [];

  factory PharmacyService() => _instance;
  PharmacyService._privateConstructor();

  Future<List<PharmacyKey>> getPharmacies() async {
    await Future.delayed(const Duration(seconds: 1)); // TODO Remove this sleep when tests are completed

    if (_pharmacies.isNotEmpty) {
      return _pharmacies;
    }

    String jsonContent = await rootBundle.loadString(filename);
    Map data = convert.jsonDecode(jsonContent);

    logger.info(data.toString());
    _pharmacies = data['pharmacies'].map<PharmacyKey>((it) => PharmacyKey.fromJson(it)).toList();

    return _pharmacies;
  }
}
