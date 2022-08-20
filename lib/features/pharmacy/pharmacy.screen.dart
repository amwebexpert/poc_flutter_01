import 'package:flutter/material.dart';

class Pharmacy extends StatelessWidget {
  const Pharmacy({Key? key, required this.pharmacyId}) : super(key: key);

  final String pharmacyId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Pharmacy detail screen')),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          tooltip: 'Order from this pharmacy',
          child: const Icon(Icons.medical_information_outlined),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8),
          child: Center(
            child: Text(pharmacyId),
          ),
        ));
  }
}
