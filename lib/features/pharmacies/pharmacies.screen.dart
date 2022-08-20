import 'package:flutter/material.dart';

import '../../services/pharmacies/api.pharmacy.model.dart';

class PharmacyListScreen extends StatelessWidget {
  const PharmacyListScreen({Key? key, required this.pharmacies}) : super(key: key);

  final List<ApiPharmacy> pharmacies;

  void _orderFromClosestPharmacy() {
    print('here');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text(pharmacies.toString())),
      floatingActionButton: FloatingActionButton(
        onPressed: _orderFromClosestPharmacy,
        tooltip: 'Order from the closest pharmacy',
        child: const Icon(Icons.medical_information),
      ),
    );
  }
}
