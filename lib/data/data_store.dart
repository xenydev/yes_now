

import 'package:yes_now/models/bmi_record/bmiRecord.dart';

abstract class DataStore {
  Future<List<BMIRecord>> getAll();
  Future<void> addRecord(BMIRecord bmiRecord);

}