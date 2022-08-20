import 'package:flutter/material.dart';

import '../../services/pharmacies/pharmacy.key/pharmacy.key.model.dart';

class PharmacyListScreen extends StatelessWidget {
  const PharmacyListScreen({Key? key, required this.pharmacies}) : super(key: key);

  final List<PharmacyKey> pharmacies;

  void _orderFromClosestPharmacy() {
    print('here');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: _orderFromClosestPharmacy,
        tooltip: 'Order from the closest pharmacy',
        child: const Icon(Icons.medical_information),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: ListView.builder(
            itemCount: pharmacies.length,
            itemBuilder: (context, index) {
              final pharmacy = pharmacies[index];

              return Card(
                child: ListTile(
                  title: Text(pharmacy.name, style: Theme.of(context).textTheme.bodyText1),
                  onTap: () => Navigator.pushNamed(context, '/pharmacy', arguments: pharmacy.pharmacyId),
                  trailing: const Icon(Icons.check), // TODO Conditional check mark
                ),
              );
            }),
      ),
    );
  }
}
