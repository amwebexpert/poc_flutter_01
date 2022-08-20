import 'dart:async';

import 'package:flutter/material.dart';

import '../../service.locator.dart';
import '../../services/pharmacies/pharmacy.key/pharmacy.key.model.dart';
import '../../services/pharmacies/pharmacy.service.dart';
import 'pharmacies.list.dart';

class PharmaciesScreen extends StatefulWidget {
  const PharmaciesScreen({Key? key}) : super(key: key);

  @override
  State<PharmaciesScreen> createState() => _PharmaciesScreenState();
}

class _PharmaciesScreenState extends State<PharmaciesScreen> {
  final PharmacyService pharmacyService = serviceLocator.get<PharmacyService>();
  late Future<List<PharmacyKey>> _pharmacies;

  @override
  void initState() {
    super.initState();
    _pharmacies = pharmacyService.getPharmacies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Medicaments ordering app')),
      body: FutureBuilder<List<PharmacyKey>>(
          future: _pharmacies,
          builder: ((context, snapshot) {
            return snapshot.connectionState == ConnectionState.done
                ? snapshot.hasData
                    ? PharmacyListScreen(pharmacies: snapshot.data!)
                    : const Text('There was an error loading data please try again')
                : const Center(child: CircularProgressIndicator());
          })),
    );
  }
}
