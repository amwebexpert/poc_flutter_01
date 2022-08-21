import 'package:flutter/material.dart';

import '../../service.locator.dart';
import '../../services/pharmacies/pharmacy/pharmacy.model.dart';
import '../../store/app.store.dart';
import 'pharmacy.detail.panel.dart';
import 'pharmacy.order.detail.panel.dart';

class PharmacyDetail extends StatelessWidget {
  final AppStore appStore = serviceLocator.get();

  PharmacyDetail({Key? key, required this.pharmacy}) : super(key: key);

  final Pharmacy pharmacy;

  @override
  Widget build(BuildContext context) {
    final hasOrders = appStore.hasOrderFor(pharmacy.value.id);
    final List<String> medicaments = appStore.orders[pharmacy.value.id] ?? [];

    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () => Navigator.pushNamed(context, '/order', arguments: {
            'pharmacyId': pharmacy.value.id,
            'pharmacyName': pharmacy.value.name,
          }),
          tooltip: 'Order from this pharmacy',
          child: const Icon(Icons.medical_information_outlined),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              children: [PharmacyDetailSection(pharmacy: pharmacy), if (hasOrders) PharmacyOrderDetailSection(medicaments: medicaments)],
            ),
          ),
        ));
  }
}
