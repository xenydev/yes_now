import 'package:yes_now/data/app_db.dart';
import 'package:yes_now/data/data_store.dart';
import 'package:sembast/sembast.dart';
import 'package:yes_now/models/bmi_record/bmiRecord.dart';

class AppDataStore implements DataStore {
  static const String BMI_STORE_NAME = 'BMI';

  final _bmiStore = intMapStoreFactory.store(BMI_STORE_NAME);

  Future<Database> get _db async => await AppDatabase.instance.database;

  Future<List<BMIRecord>> getAll() async {
    try {
      final sortDate = Finder(sortOrders: [SortOrder('date', false)]);
      final dataList = await _bmiStore.find(await _db, finder: sortDate);

      if (dataList.isNotEmpty) {
        return dataList.map((item) {
          final record = BMIRecord.fromJson(item.value);

          return record;
        }).toList();
      } else {
        return [];
      }
    } catch (e) {
      print(e);
      return null;
    }
  }

  Future<void> addRecord(BMIRecord bmiRecord) async {
    try {
      await _bmiStore.add(await _db, BMIRecord.create(bmiRecord.date, bmiRecord.bmi).toJson());
    } catch (e) {
      print(e);
      return null;
    }
  }

  Future<void> updateRecord(String id, double bmi) async {
    try {

      BMIRecord recordToUpdate;

      final findRecordUpdate = Finder(filter: Filter.equal('id', id));
      final recordFiltered = await _bmiStore.find(await _db, finder: findRecordUpdate);

      recordFiltered.map((item) {
        return recordToUpdate = BMIRecord.fromJson(item.value);
      }).toList();

      BMIRecord newRecord = recordToUpdate.copyWith(bmi: bmi);

      await _bmiStore.update(await _db, newRecord.toJson(), finder: findRecordUpdate);

    } catch (e) {
      print(e);
      return null;
    }
  }
}
