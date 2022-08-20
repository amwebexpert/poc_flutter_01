import 'package:flutter/material.dart';

import 'medicament.item.model.dart';

class MedicamentList extends StatefulWidget {
  const MedicamentList({Key? key, required this.medicamentNames}) : super(key: key);

  final List<String> medicamentNames;

  @override
  State<MedicamentList> createState() => _MedicamentListState();
}

class _MedicamentListState extends State<MedicamentList> {
  late final List<MedicamentItem> medicamentItems;

  @override
  void initState() {
    super.initState();
    medicamentItems = widget.medicamentNames.map((name) => MedicamentItem(name: name)).toList();
  }

  void _onTap(MedicamentItem medicamentItem) {
    setState(() => medicamentItem.isSelected = !medicamentItem.isSelected);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: ListView.builder(
          itemCount: medicamentItems.length,
          itemBuilder: (context, index) {
            final medicamentItem = medicamentItems[index];

            return Card(
              child: ListTile(
                title: Text(medicamentItem.name),
                onTap: () => _onTap(medicamentItem),
                trailing: medicamentItem.isSelected ? const Icon(Icons.check_box) : const Icon(Icons.check_box_outline_blank),
              ),
            );
          }),
    );
  }
}
