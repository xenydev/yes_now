// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'bmiRecord.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
BMIRecord _$BMIRecordFromJson(Map<String, dynamic> json) {
  return _BMIRecord.fromJson(json);
}

/// @nodoc
class _$BMIRecordTearOff {
  const _$BMIRecordTearOff();

// ignore: unused_element
  _BMIRecord call({String id, @required DateTime date, @required double bmi}) {
    return _BMIRecord(
      id: id,
      date: date,
      bmi: bmi,
    );
  }

// ignore: unused_element
  BMIRecord fromJson(Map<String, Object> json) {
    return BMIRecord.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $BMIRecord = _$BMIRecordTearOff();

/// @nodoc
mixin _$BMIRecord {
  String get id;
  DateTime get date;
  double get bmi;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $BMIRecordCopyWith<BMIRecord> get copyWith;
}

/// @nodoc
abstract class $BMIRecordCopyWith<$Res> {
  factory $BMIRecordCopyWith(BMIRecord value, $Res Function(BMIRecord) then) =
      _$BMIRecordCopyWithImpl<$Res>;
  $Res call({String id, DateTime date, double bmi});
}

/// @nodoc
class _$BMIRecordCopyWithImpl<$Res> implements $BMIRecordCopyWith<$Res> {
  _$BMIRecordCopyWithImpl(this._value, this._then);

  final BMIRecord _value;
  // ignore: unused_field
  final $Res Function(BMIRecord) _then;

  @override
  $Res call({
    Object id = freezed,
    Object date = freezed,
    Object bmi = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      date: date == freezed ? _value.date : date as DateTime,
      bmi: bmi == freezed ? _value.bmi : bmi as double,
    ));
  }
}

/// @nodoc
abstract class _$BMIRecordCopyWith<$Res> implements $BMIRecordCopyWith<$Res> {
  factory _$BMIRecordCopyWith(
          _BMIRecord value, $Res Function(_BMIRecord) then) =
      __$BMIRecordCopyWithImpl<$Res>;
  @override
  $Res call({String id, DateTime date, double bmi});
}

/// @nodoc
class __$BMIRecordCopyWithImpl<$Res> extends _$BMIRecordCopyWithImpl<$Res>
    implements _$BMIRecordCopyWith<$Res> {
  __$BMIRecordCopyWithImpl(_BMIRecord _value, $Res Function(_BMIRecord) _then)
      : super(_value, (v) => _then(v as _BMIRecord));

  @override
  _BMIRecord get _value => super._value as _BMIRecord;

  @override
  $Res call({
    Object id = freezed,
    Object date = freezed,
    Object bmi = freezed,
  }) {
    return _then(_BMIRecord(
      id: id == freezed ? _value.id : id as String,
      date: date == freezed ? _value.date : date as DateTime,
      bmi: bmi == freezed ? _value.bmi : bmi as double,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_BMIRecord implements _BMIRecord {
  const _$_BMIRecord({this.id, @required this.date, @required this.bmi})
      : assert(date != null),
        assert(bmi != null);

  factory _$_BMIRecord.fromJson(Map<String, dynamic> json) =>
      _$_$_BMIRecordFromJson(json);

  @override
  final String id;
  @override
  final DateTime date;
  @override
  final double bmi;

  @override
  String toString() {
    return 'BMIRecord(id: $id, date: $date, bmi: $bmi)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BMIRecord &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.bmi, bmi) ||
                const DeepCollectionEquality().equals(other.bmi, bmi)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(bmi);

  @JsonKey(ignore: true)
  @override
  _$BMIRecordCopyWith<_BMIRecord> get copyWith =>
      __$BMIRecordCopyWithImpl<_BMIRecord>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_BMIRecordToJson(this);
  }
}

abstract class _BMIRecord implements BMIRecord {
  const factory _BMIRecord(
      {String id,
      @required DateTime date,
      @required double bmi}) = _$_BMIRecord;

  factory _BMIRecord.fromJson(Map<String, dynamic> json) =
      _$_BMIRecord.fromJson;

  @override
  String get id;
  @override
  DateTime get date;
  @override
  double get bmi;
  @override
  @JsonKey(ignore: true)
  _$BMIRecordCopyWith<_BMIRecord> get copyWith;
}
