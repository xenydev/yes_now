import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yes_now/models/bmi_record/bmiRecord.dart';

part 'bmiRecord_state.freezed.dart';

@freezed
abstract class Records with _$Records {
  const factory Records.data(
      List<BMIRecord> records,
      ) = RecordsList;
  const factory Records.loading() = RecordsLoading;
  const factory Records.onError(Object error, StackTrace st) = RecordsError;
}