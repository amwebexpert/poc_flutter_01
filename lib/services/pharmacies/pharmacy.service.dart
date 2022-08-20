import 'dart:async';
import 'dart:convert' as convert;
import 'dart:io';

import 'package:flutter/services.dart' show rootBundle;
import 'package:http/http.dart' as http;
import 'package:poc_flutter_01/services/pharmacies/pharmacy/pharmacy.model.dart';

import '../../service.locator.dart';
import '../file/file.service.dart';
import '../logger/logger.service.dart';
import 'pharmacy.key/pharmacy.key.model.dart';

class PharmacyService {
  final LoggerService logger = serviceLocator.get();
  final FileService fileService = serviceLocator.get();

  static final PharmacyService _instance = PharmacyService._privateConstructor();
  static const String pharmaciesAssetsFilename = 'assets/data/pharmacies.json';
  static const String hostname = 'api-qa-demo.nimbleandsimple.com';
  static const String pharmacyDetailEndpoint = '/pharmacies/info/';

  // internal service cache
  List<PharmacyKey> _pharmacies = [];
  final List<String> _medicaments = ['Metroprolol', 'Contact C'];

  factory PharmacyService() => _instance;
  PharmacyService._privateConstructor();

  Future<List<PharmacyKey>> getPharmacies() async {
    await Future.delayed(const Duration(seconds: 1)); // TODO Remove this sleep when tests are completed

    if (_pharmacies.isNotEmpty) {
      return _pharmacies;
    }

    final String jsonContent = await rootBundle.loadString(pharmaciesAssetsFilename);
    final Map data = convert.jsonDecode(jsonContent);

    logger.info(data.toString());
    _pharmacies = data['pharmacies'].map<PharmacyKey>((it) => PharmacyKey.fromJson(it)).toList();

    return _pharmacies;
  }

  Future<Pharmacy> getPharmacyDetail(String pharmacyId) async {
    final Uri url = Uri.https(hostname, pharmacyDetailEndpoint + pharmacyId);
    final response = _validateApiResponse(await http.get(url));
    final Map<String, dynamic> data = convert.jsonDecode(response.body);

    return Pharmacy.fromJson(data);
  }

  Future<List<String>> getMedicaments() async {
    if (_medicaments.isNotEmpty) {
      return _medicaments;
    }

    return _medicaments;
  }

  http.Response _validateApiResponse(http.Response response) {
    if (response.statusCode == HttpStatus.ok) {
      return response;
    }

    final message = 'Request failed with status ${response.statusCode}';
    logger.error(message);
    throw Exception(message);
  }
}
