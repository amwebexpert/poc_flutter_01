import 'dart:convert' as convert;
import 'package:flutter/services.dart' show rootBundle;
import '../../service.locator.dart';
import '../file/file.service.dart';
import '../logger/logger.service.dart';
import 'api.pharmacy.model.dart';

class PharmacyService {
  final LoggerService logger = serviceLocator.get();
  final FileService fileService = serviceLocator.get();

  static final PharmacyService _instance = PharmacyService._privateConstructor();
  static const String filename = 'assets/data/pharmacies.json';

  // internal service cache
  List<ApiPharmacy> _pharmacies = [];

  factory PharmacyService() => _instance;
  PharmacyService._privateConstructor();

  Future<List<ApiPharmacy>> getPharmacies() async {
    if (_pharmacies.isNotEmpty) {
      return _pharmacies;
    }

    String jsonContent = await rootBundle.loadString(filename);
    Map data = convert.jsonDecode(jsonContent);

    logger.info(data.toString());
    _pharmacies = data['pharmacies'].map<ApiPharmacy>((it) => ApiPharmacy.fromJson(it)).toList();

    return _pharmacies;
  }
}
