import 'package:flutter/material.dart';

class Pharmacy extends StatelessWidget {
  const Pharmacy({Key? key, required this.pharmacyId}) : super(key: key);

  final String pharmacyId;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(pharmacyId),
    );
  }
}
