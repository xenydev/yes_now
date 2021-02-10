import 'package:uuid/uuid.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bmiRecord.freezed.dart';
part 'bmiRecord.g.dart';

var _uuid = Uuid();

@freezed
abstract class BMIRecord with _$BMIRecord {
  const factory BMIRecord({
    String id,
    @required DateTime date,
    @required double bmi,
  }) = _BMIRecord;

  factory BMIRecord.create(DateTime date,double bmi) {
    return BMIRecord(
      id: _uuid.v4(),
      date: date,
      bmi: bmi,
    );
  }

  factory BMIRecord.fromJson(Map<String, dynamic> json) => _$BMIRecordFromJson(json);
}