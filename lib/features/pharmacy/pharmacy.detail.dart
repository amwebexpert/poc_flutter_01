import 'package:flutter/material.dart';

import '../../services/pharmacies/pharmacy/pharmacy.model.dart';
import 'pharmacy.detail.panel.dart';

class PharmacyDetail extends StatelessWidget {
  const PharmacyDetail({Key? key, required this.pharmacy}) : super(key: key);

  final Pharmacy pharmacy;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () => Navigator.pushNamed(context, '/order', arguments: pharmacy.value.id),
          tooltip: 'Order from this pharmacy',
          child: const Icon(Icons.medical_information_outlined),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              children: [
                PharmacyDetailSection(pharmacy: pharmacy),
              ],
            ),
          ),
        ));
  }
}
