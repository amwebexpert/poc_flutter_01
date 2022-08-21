import 'dart:async';
import 'dart:convert' as convert;
import 'dart:io';

import 'package:flutter/services.dart' show rootBundle;
import 'package:http/http.dart' as http;
import 'package:latlong2/latlong.dart';
import 'package:poc_flutter_01/services/pharmacies/pharmacy/pharmacy.model.dart';

import '../../service.locator.dart';
import '../file/file.service.dart';
import '../logger/logger.service.dart';
import 'pharmacy.key/pharmacy.key.model.dart';
import 'pharmacy/pharmacy.address.model.dart';

class PharmacyService {
  final LoggerService logger = serviceLocator.get();
  final FileService fileService = serviceLocator.get();

  static final PharmacyService _instance = PharmacyService._privateConstructor();
  static const String pharmaciesAssetsFilename = 'assets/data/pharmacies.json';

  // internal service cache
  List<PharmacyKey> _pharmacyKeysCache = [];
  List<String> _medicamentNamesCache = [];
  final Map<String, Pharmacy> _pharmaciesDetailCache = {};
  Pharmacy? _closestPharmacyCache;

  factory PharmacyService() => _instance;
  PharmacyService._privateConstructor();

  Future<List<PharmacyKey>> getPharmacies() async {
    if (_pharmacyKeysCache.isNotEmpty) {
      return _pharmacyKeysCache;
    }

    final String jsonContent = await rootBundle.loadString(pharmaciesAssetsFilename);
    final Map data = convert.jsonDecode(jsonContent);

    logger.info(data.toString());
    _pharmacyKeysCache = data['pharmacies'].map<PharmacyKey>((it) => PharmacyKey.fromJson(it)).toList();

    return _pharmacyKeysCache;
  }

  Future<Pharmacy> getClosestPharmacyDetail({required double latitude, required double longitude}) async {
    if (_closestPharmacyCache != null) {
      return _closestPharmacyCache!;
    }

    const Distance distance = Distance();
    final LatLng userLocation = LatLng(latitude, longitude);
    final List<PharmacyKey> pharmacyKeys = await getPharmacies();
    final List<Pharmacy> pharmacies = await Future.wait([...pharmacyKeys.map((pharmacyKey) => getPharmacyDetail(pharmacyKey.pharmacyId))]);

    // start from the very 1st pharmacy
    final PharmacyAddress firstPharmacyAddress = pharmacies.first.value.address;
    double kmFromUser = distance.as(LengthUnit.Kilometer, userLocation, LatLng(firstPharmacyAddress.latitude, firstPharmacyAddress.longitude));

    // compare all other pharmacies distance from user and always keep the nearest
    final Pharmacy closestPharmacy = pharmacies.reduce((value, element) {
      final address = element.value.address;
      final double km = distance.as(LengthUnit.Kilometer, userLocation, LatLng(address.latitude, address.longitude));

      if (km < kmFromUser) {
        kmFromUser = km;
        return element;
      } else {
        return value;
      }
    });

    _closestPharmacyCache = closestPharmacy;

    return closestPharmacy;
  }

  Future<Pharmacy> getPharmacyDetail(String pharmacyId) async {
    if (_pharmaciesDetailCache.containsKey(pharmacyId)) {
      return _pharmaciesDetailCache[pharmacyId]!;
    }

    // TODO Use .env to retrieve these environment values
    const String hostname = 'api-qa-demo.nimbleandsimple.com';
    const String pharmacyDetailEndpoint = '/pharmacies/info/';

    final Uri url = Uri.https(hostname, pharmacyDetailEndpoint + pharmacyId);
    final response = _validateApiResponse(await http.get(url));
    final Map<String, dynamic> data = convert.jsonDecode(response.body);

    Pharmacy pharmacy = Pharmacy.fromJson(data);
    _pharmaciesDetailCache[pharmacyId] = pharmacy;

    return pharmacy;
  }

  Future<List<String>> getMedicaments() async {
    if (_medicamentNamesCache.isNotEmpty) {
      return _medicamentNamesCache;
    }

    // TODO Use .env to retrieve these environment values
    const hostname = 's3-us-west-2.amazonaws.com';
    const medicamentsEndpoint = '/assets.nimblerx.com/prod/medicationListFromNIH/medicationListFromNIH.txt';

    final Uri url = Uri.https(hostname, medicamentsEndpoint);
    final response = _validateApiResponse(await http.get(url));
    final rawTextContent = response.body;
    _medicamentNamesCache = rawTextContent.split(',\n');

    return _medicamentNamesCache;
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
