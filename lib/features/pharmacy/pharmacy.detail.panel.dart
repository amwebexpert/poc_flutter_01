import 'package:flutter/material.dart';
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
    return Column(
      children: [
        const SizedBox(height: 20),
        Text('Location and contact information', style: Theme.of(context).textTheme.titleMedium),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: CompactDatatableWidget(
            rows: <DataRow>[
              DataRow(cells: <DataCell>[const DataCell(Text('Name')), DataCell(Text(info.name))]),
              DataRow(cells: <DataCell>[const DataCell(Text('Primary phone number')), DataCell(Text(info.primaryPhoneNumber))]),
              DataRow(cells: <DataCell>[const DataCell(Text('Business hours')), DataCell(Text(info.pharmacyHours.isBlank ? 'N/A' : info.pharmacyHours))]),
            ],
          ),
        ),
      ],
    );
  }
}
