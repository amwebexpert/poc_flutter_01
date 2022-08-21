import 'dart:convert';

import 'package:mobx/mobx.dart';
import 'package:poc_flutter_01/services/file/directory.enum.dart';
import 'package:poc_flutter_01/services/file/file.service.dart';

import '../service.locator.dart';

// Include generated file
part 'app.store.g.dart';

// This is the class used by rest of the codebase
class AppStore = AppStoreBase with _$AppStore;

// The store-class
abstract class AppStoreBase with Store {
  final FileService fileService = serviceLocator.get<FileService>();

  @observable
  ObservableMap<String, List<String>> orders = ObservableMap.of({});

  @action
  void addOrder({required String pharmacyId, required List<String> medicaments}) {
    orders[pharmacyId] = medicaments;
    String data = json.encode(orders);
    fileService.write(data: data, filename: 'orders.json', directoryType: DirectoryType.appSupport);
  }

  bool hasOrderFor(String pharmacyId) => orders.containsKey(pharmacyId);
}
