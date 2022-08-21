import 'package:flutter/material.dart';

import '../../theme/compact.datatable.widget.dart';

class PharmacyOrderDetailSection extends StatelessWidget {
  const PharmacyOrderDetailSection({Key? key, required this.medicaments}) : super(key: key);

  final List<String> medicaments;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SizedBox(height: 20),
            Text('Medicaments ordered', style: Theme.of(context).textTheme.titleMedium),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  CompactDatatableWidget(
                    rows: medicaments.map((name) => DataRow(cells: <DataCell>[DataCell(Text(name))])).toList(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
