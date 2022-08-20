import 'dart:async';

import 'package:flutter/material.dart';
import 'package:poc_flutter_01/service.locator.dart';
import 'package:poc_flutter_01/services/pharmacies/pharmacy.service.dart';

import '../../services/pharmacies/pharmacy.model.dart';
import 'pharmacy.detail.dart';

class PharmacyScreen extends StatefulWidget {
  const PharmacyScreen({Key? key, required this.pharmacyId}) : super(key: key);

  final String pharmacyId;

  @override
  State<PharmacyScreen> createState() => _PharmacyScreenState();
}

class _PharmacyScreenState extends State<PharmacyScreen> {
  final PharmacyService pharmacyService = serviceLocator.get<PharmacyService>();
  late Future<Pharmacy> _pharmacy;

  @override
  void initState() {
    super.initState();
    _pharmacy = Future.value(Pharmacy(details: widget.pharmacyId)); //pharmacyService.getPharmacy(widget.pharmacyId);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Pharmacy detail screen')),
      body: FutureBuilder<Pharmacy>(
          future: _pharmacy,
          builder: ((context, snapshot) {
            return snapshot.connectionState == ConnectionState.done
                ? snapshot.hasData
                    ? PharmacyDetail(pharmacy: snapshot.data!)
                    : const Text('There was an error loading data please try again')
                : const Center(child: CircularProgressIndicator());
          })),
    );
  }
}
