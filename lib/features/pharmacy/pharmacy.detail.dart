import 'package:flutter/material.dart';

import '../../services/pharmacies/pharmacy/pharmacy.model.dart';

class PharmacyDetail extends StatelessWidget {
  const PharmacyDetail({Key? key, required this.pharmacy}) : super(key: key);

  final Pharmacy pharmacy;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          tooltip: 'Order from this pharmacy',
          child: const Icon(Icons.medical_information_outlined),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8),
          child: Center(
            child: Text(pharmacy.value.name),
          ),
        ));
  }
}
