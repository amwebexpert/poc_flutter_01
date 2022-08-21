import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../../service.locator.dart';
import '../../services/pharmacies/pharmacy.key/pharmacy.key.model.dart';
import '../../services/pharmacies/pharmacy.service.dart';
import '../../store/app.store.dart';

class PharmacyListScreen extends StatefulWidget {
  const PharmacyListScreen({Key? key, required this.pharmacies}) : super(key: key);

  final List<PharmacyKey> pharmacies;

  @override
  State<PharmacyListScreen> createState() => _PharmacyListScreenState();
}

class _PharmacyListScreenState extends State<PharmacyListScreen> {
  final PharmacyService pharmacyService = serviceLocator.get<PharmacyService>();
  final AppStore appStore = serviceLocator.get();

  Future<void> _orderFromClosestPharmacy() async {
    final closestPharmacy = await pharmacyService.getClosestPharmacyDetail(latitude: 37.48771670017411, longitude: -122.22652739630438);
    print('**** closestPharmacy: ${closestPharmacy.value.name}');
  }

  void _onTap(PharmacyKey pharmacyKey) {
    Navigator.pushNamed(context, '/pharmacy', arguments: pharmacyKey.pharmacyId);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: _orderFromClosestPharmacy,
                      child: const Text('Order from the closest'),
                    ),
                  ],
                ),
              )
            ],
          );
        }),
      ),
    );
  }
}
