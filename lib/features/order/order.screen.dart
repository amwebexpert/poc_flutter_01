import 'dart:async';

import 'package:flutter/material.dart';

import '../../service.locator.dart';
import '../../services/pharmacies/pharmacy.service.dart';
import 'medicaments.list.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({Key? key, required this.pharmacyId, required this.pharmacyName}) : super(key: key);

  final String pharmacyId;
  final String pharmacyName;

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  final PharmacyService pharmacyService = serviceLocator.get<PharmacyService>();
  late Future<List<String>> _medicaments;

  @override
  void initState() {
    super.initState();
    _medicaments = pharmacyService.getMedicaments();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Medicaments selection')),
      body: FutureBuilder<List<String>>(
          future: _medicaments,
          builder: ((context, snapshot) {
            return snapshot.connectionState == ConnectionState.done
                ? snapshot.hasData
                    ? MedicamentList(medicamentNames: snapshot.data!, pharmacyId: widget.pharmacyId, pharmacyName: widget.pharmacyName)
                    : const Text('There was an error loading data please try again')
                : const Center(child: CircularProgressIndicator());
          })),
    );
  }
}
