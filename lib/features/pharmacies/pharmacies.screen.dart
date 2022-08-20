import 'dart:async';

import 'package:flutter/material.dart';
import 'package:poc_flutter_01/features/pharmacies/pharmacies.list.dart';
import 'package:poc_flutter_01/service.locator.dart';
import 'package:poc_flutter_01/services/pharmacies/api.pharmacy.model.dart';
import 'package:poc_flutter_01/services/pharmacies/pharmacy.service.dart';

class PharmaciesScreen extends StatefulWidget {
  const PharmaciesScreen({Key? key}) : super(key: key);

  @override
  State<PharmaciesScreen> createState() => _PharmaciesScreenState();
}

class _PharmaciesScreenState extends State<PharmaciesScreen> {
  final PharmacyService pharmacyService = serviceLocator.get<PharmacyService>();
  late Future<List<ApiPharmacy>> _pharmacies;

  @override
  void initState() {
    super.initState();
    _pharmacies = pharmacyService.getPharmacies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Pharmacy list screen')),
      body: FutureBuilder<List<ApiPharmacy>>(
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
