import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../../services/pharmacies/pharmacy.key/pharmacy.key.model.dart';
import '../../store/app.store.dart';

class PharmacyListScreen extends StatefulWidget {
  const PharmacyListScreen({Key? key, required this.pharmacies}) : super(key: key);

  final List<PharmacyKey> pharmacies;

  @override
  State<PharmacyListScreen> createState() => _PharmacyListScreenState();
}

class _PharmacyListScreenState extends State<PharmacyListScreen> {
  final AppStore appStore = AppStore();

  void _orderFromClosestPharmacy() {
    print('here');
  }

  void _onTap(PharmacyKey pharmacyKey) {
    appStore.addOrder(pharmacyId: pharmacyKey.pharmacyId, medicaments: ['test', 'test-2']);
    Navigator.pushNamed(context, '/pharmacy', arguments: pharmacyKey.pharmacyId);
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
        child: Observer(builder: (context) {
          final orders = appStore.orders;

          return Column(
            children: [
              Text('Orders count: ${orders.length}'),
              Expanded(
                child: ListView.builder(
                    itemCount: widget.pharmacies.length,
                    itemBuilder: (context, index) {
                      final PharmacyKey pharmacyKey = widget.pharmacies[index];

                      return Card(
                        child: ListTile(
                          title: Text(pharmacyKey.name, style: Theme.of(context).textTheme.bodyText1),
                          onTap: () => _onTap(pharmacyKey),
                          trailing: orders.containsKey(pharmacyKey.pharmacyId) ? const Icon(Icons.check) : null,
                        ),
                      );
                    }),
              ),
            ],
          );
        }),
      ),
    );
  }
}
