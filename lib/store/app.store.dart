import 'package:mobx/mobx.dart';

// Include generated file
part 'app.store.g.dart';

// This is the class used by rest of the codebase
class AppStore = AppStoreBase with _$AppStore;

// The store-class
abstract class AppStoreBase with Store {
  @observable
  ObservableMap<String, List<String>> orders = ObservableMap.of({});

  @action
  void addOrder({required String pharmacyId, required List<String> medicaments}) {
    orders[pharmacyId] = medicaments;
  }

  bool hasOrderFor(String pharmacyId) => orders.containsKey(pharmacyId);
}
