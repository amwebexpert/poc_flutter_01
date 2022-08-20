import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:poc_flutter_01/app.error.widget.dart';
import 'package:poc_flutter_01/features/pharmacies/pharmacies.screen.dart';
import 'package:poc_flutter_01/service.locator.dart';
import 'package:poc_flutter_01/services/logger/logger.service.dart';
import 'package:poc_flutter_01/services/pharmacies/api.pharmacy.model.dart';
import 'package:poc_flutter_01/services/pharmacies/pharmacy.service.dart';

void main() {
  if (!kDebugMode) {
    ErrorWidget.builder = (FlutterErrorDetails details) => AppErrorWidget(details: details);
  }
  debugRepaintRainbowEnabled = false;

  runZonedGuarded(() async {
    WidgetsFlutterBinding.ensureInitialized();
    runApp(const MyApp());
  }, (error, stackTrace) {
    LoggerService().error('unhandled error occured in root zone', error: error, stackTrace: stackTrace);
  });
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'POC 01',
      theme: ThemeData(primarySwatch: Colors.green),
      themeMode: ThemeMode.dark,
      home: const MyHomePage(title: 'Flutter POC 01'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late Future<List<ApiPharmacy>> _pharmacies;

  @override
  void initState() {
    super.initState();
    _pharmacies = loadData();
  }

  Future<List<ApiPharmacy>> loadData() async {
    final serviceLocator = await initServiceLocator();
    final PharmacyService pharmacyService = serviceLocator.get<PharmacyService>();
    return pharmacyService.getPharmacies();
  }

  Widget _buildBody(BuildContext context) => FutureBuilder<List<ApiPharmacy>>(
      future: _pharmacies,
      builder: ((context, snapshot) {
        return snapshot.connectionState == ConnectionState.done
            ? snapshot.hasData
                ? PharmacyListScreen(pharmacies: snapshot.data!)
                : const Text('there was an error loading please try again')
            : const Center(child: CircularProgressIndicator());
      }));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: _buildBody(context),
    );
  }
}