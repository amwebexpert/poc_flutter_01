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

  void _onConfirm() {
    print('onConfirm');
  }

  bool hasAtLeastOneSelection() => medicamentItems.any((element) => element.isSelected);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: medicamentItems.length,
                itemBuilder: (context, index) {
                  final medicamentItem = medicamentItems[index];

                  return Card(
                    child: ListTile(
                      title: Text(medicamentItem.name),
                      onTap: () => _onTap(medicamentItem),
                      visualDensity: VisualDensity.compact,
                      trailing: medicamentItem.isSelected ? const Icon(Icons.check_box) : const Icon(Icons.check_box_outline_blank),
                    ),
                  );
                }),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text('Cancel'),
                ),
                const SizedBox(width: 16),
                ElevatedButton(
                  onPressed: hasAtLeastOneSelection() ? _onConfirm : null,
                  child: const Text('Confirm'),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}