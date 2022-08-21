import 'package:flutter/material.dart';
import 'package:poc_flutter_01/services/pharmacies/pharmacy/pharmacy.address.model.dart';
import 'package:poc_flutter_01/services/pharmacies/pharmacy/pharmacy.info.model.dart';

import '../../services/pharmacies/pharmacy/pharmacy.model.dart';
import '../../theme/compact.datatable.widget.dart';
import '../../utils/extensions/string.extensions.dart';

class PharmacyDetailSection extends StatelessWidget {
  const PharmacyDetailSection({Key? key, required this.pharmacy}) : super(key: key);

  final Pharmacy pharmacy;

  @override
  Widget build(BuildContext context) {
    PharmacyInfo info = pharmacy.value;
    PharmacyAddress address = info.address;
    List<String> hours = info.pharmacyHours.isBlank ? ['N/A'] : info.pharmacyHours.split(' \\n ');

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SizedBox(height: 20),
            Text('Location and contact information', style: Theme.of(context).textTheme.titleMedium),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  CompactDatatableWidget(
                    rows: <DataRow>[
                      DataRow(cells: <DataCell>[const DataCell(Text('Name')), DataCell(Text(info.name))]),
                      DataRow(cells: <DataCell>[const DataCell(Text('Phone')), DataCell(Text(info.primaryPhoneNumber))]),
                      DataRow(cells: <DataCell>[const DataCell(Text('Address')), DataCell(Text(address.streetAddress1))]),
                      DataRow(cells: <DataCell>[const DataCell(Text('City')), DataCell(Text(address.city))]),
                      DataRow(cells: <DataCell>[const DataCell(Text('Postal code')), DataCell(Text(address.postalCode))]),
                      DataRow(cells: <DataCell>[const DataCell(Text('US Territory')), DataCell(Text(address.usTerritory))]),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            Text('Business hours', style: Theme.of(context).textTheme.titleMedium),
            const SizedBox(height: 8),
            ...hours.map((hour) => Text(hour)).toList(),
          ],
        ),
      ),
    );
  }
}
