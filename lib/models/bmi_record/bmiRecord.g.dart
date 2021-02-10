// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bmiRecord.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BMIRecord _$_$_BMIRecordFromJson(Map<String, dynamic> json) {
  return _$_BMIRecord(
    id: json['id'] as String,
    date: json['date'] == null ? null : DateTime.parse(json['date'] as String),
    bmi: (json['bmi'] as num)?.toDouble(),
  );
}

Map<String, dynamic> _$_$_BMIRecordToJson(_$_BMIRecord instance) =>
    <String, dynamic>{
      'id': instance.id,
      'date': instance.date?.toIso8601String(),
      'bmi': instance.bmi,
    };
