// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'bmiRecord_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$RecordsTearOff {
  const _$RecordsTearOff();

// ignore: unused_element
  RecordsList data(List<BMIRecord> records) {
    return RecordsList(
      records,
    );
  }

// ignore: unused_element
  RecordsLoading loading() {
    return const RecordsLoading();
  }

// ignore: unused_element
  RecordsError onError(Object error, StackTrace st) {
    return RecordsError(
      error,
      st,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Records = _$RecordsTearOff();

/// @nodoc
mixin _$Records {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult data(List<BMIRecord> records),
    @required TResult loading(),
    @required TResult onError(Object error, StackTrace st),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult data(List<BMIRecord> records),
    TResult loading(),
    TResult onError(Object error, StackTrace st),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult data(RecordsList value),
    @required TResult loading(RecordsLoading value),
    @required TResult onError(RecordsError value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult data(RecordsList value),
    TResult loading(RecordsLoading value),
    TResult onError(RecordsError value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $RecordsCopyWith<$Res> {
  factory $RecordsCopyWith(Records value, $Res Function(Records) then) =
      _$RecordsCopyWithImpl<$Res>;
}

/// @nodoc
class _$RecordsCopyWithImpl<$Res> implements $RecordsCopyWith<$Res> {
  _$RecordsCopyWithImpl(this._value, this._then);

  final Records _value;
  // ignore: unused_field
  final $Res Function(Records) _then;
}

/// @nodoc
abstract class $RecordsListCopyWith<$Res> {
  factory $RecordsListCopyWith(
          RecordsList value, $Res Function(RecordsList) then) =
      _$RecordsListCopyWithImpl<$Res>;
  $Res call({List<BMIRecord> records});
}

/// @nodoc
class _$RecordsListCopyWithImpl<$Res> extends _$RecordsCopyWithImpl<$Res>
    implements $RecordsListCopyWith<$Res> {
  _$RecordsListCopyWithImpl(
      RecordsList _value, $Res Function(RecordsList) _then)
      : super(_value, (v) => _then(v as RecordsList));

  @override
  RecordsList get _value => super._value as RecordsList;

  @override
  $Res call({
    Object records = freezed,
  }) {
    return _then(RecordsList(
      records == freezed ? _value.records : records as List<BMIRecord>,
    ));
  }
}

/// @nodoc
class _$RecordsList implements RecordsList {
  const _$RecordsList(this.records) : assert(records != null);

  @override
  final List<BMIRecord> records;

  @override
  String toString() {
    return 'Records.data(records: $records)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RecordsList &&
            (identical(other.records, records) ||
                const DeepCollectionEquality().equals(other.records, records)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(records);

  @JsonKey(ignore: true)
  @override
  $RecordsListCopyWith<RecordsList> get copyWith =>
      _$RecordsListCopyWithImpl<RecordsList>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult data(List<BMIRecord> records),
    @required TResult loading(),
    @required TResult onError(Object error, StackTrace st),
  }) {
    assert(data != null);
    assert(loading != null);
    assert(onError != null);
    return data(records);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult data(List<BMIRecord> records),
    TResult loading(),
    TResult onError(Object error, StackTrace st),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (data != null) {
      return data(records);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult data(RecordsList value),
    @required TResult loading(RecordsLoading value),
    @required TResult onError(RecordsError value),
  }) {
    assert(data != null);
    assert(loading != null);
    assert(onError != null);
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult data(RecordsList value),
    TResult loading(RecordsLoading value),
    TResult onError(RecordsError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class RecordsList implements Records {
  const factory RecordsList(List<BMIRecord> records) = _$RecordsList;

  List<BMIRecord> get records;
  @JsonKey(ignore: true)
  $RecordsListCopyWith<RecordsList> get copyWith;
}

/// @nodoc
abstract class $RecordsLoadingCopyWith<$Res> {
  factory $RecordsLoadingCopyWith(
          RecordsLoading value, $Res Function(RecordsLoading) then) =
      _$RecordsLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$RecordsLoadingCopyWithImpl<$Res> extends _$RecordsCopyWithImpl<$Res>
    implements $RecordsLoadingCopyWith<$Res> {
  _$RecordsLoadingCopyWithImpl(
      RecordsLoading _value, $Res Function(RecordsLoading) _then)
      : super(_value, (v) => _then(v as RecordsLoading));

  @override
  RecordsLoading get _value => super._value as RecordsLoading;
}

/// @nodoc
class _$RecordsLoading implements RecordsLoading {
  const _$RecordsLoading();

  @override
  String toString() {
    return 'Records.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is RecordsLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult data(List<BMIRecord> records),
    @required TResult loading(),
    @required TResult onError(Object error, StackTrace st),
  }) {
    assert(data != null);
    assert(loading != null);
    assert(onError != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult data(List<BMIRecord> records),
    TResult loading(),
    TResult onError(Object error, StackTrace st),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult data(RecordsList value),
    @required TResult loading(RecordsLoading value),
    @required TResult onError(RecordsError value),
  }) {
    assert(data != null);
    assert(loading != null);
    assert(onError != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult data(RecordsList value),
    TResult loading(RecordsLoading value),
    TResult onError(RecordsError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class RecordsLoading implements Records {
  const factory RecordsLoading() = _$RecordsLoading;
}

/// @nodoc
abstract class $RecordsErrorCopyWith<$Res> {
  factory $RecordsErrorCopyWith(
          RecordsError value, $Res Function(RecordsError) then) =
      _$RecordsErrorCopyWithImpl<$Res>;
  $Res call({Object error, StackTrace st});
}

/// @nodoc
class _$RecordsErrorCopyWithImpl<$Res> extends _$RecordsCopyWithImpl<$Res>
    implements $RecordsErrorCopyWith<$Res> {
  _$RecordsErrorCopyWithImpl(
      RecordsError _value, $Res Function(RecordsError) _then)
      : super(_value, (v) => _then(v as RecordsError));

  @override
  RecordsError get _value => super._value as RecordsError;

  @override
  $Res call({
    Object error = freezed,
    Object st = freezed,
  }) {
    return _then(RecordsError(
      error == freezed ? _value.error : error,
      st == freezed ? _value.st : st as StackTrace,
    ));
  }
}

/// @nodoc
class _$RecordsError implements RecordsError {
  const _$RecordsError(this.error, this.st)
      : assert(error != null),
        assert(st != null);

  @override
  final Object error;
  @override
  final StackTrace st;

  @override
  String toString() {
    return 'Records.onError(error: $error, st: $st)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RecordsError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)) &&
            (identical(other.st, st) ||
                const DeepCollectionEquality().equals(other.st, st)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(error) ^
      const DeepCollectionEquality().hash(st);

  @JsonKey(ignore: true)
  @override
  $RecordsErrorCopyWith<RecordsError> get copyWith =>
      _$RecordsErrorCopyWithImpl<RecordsError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult data(List<BMIRecord> records),
    @required TResult loading(),
    @required TResult onError(Object error, StackTrace st),
  }) {
    assert(data != null);
    assert(loading != null);
    assert(onError != null);
    return onError(error, st);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult data(List<BMIRecord> records),
    TResult loading(),
    TResult onError(Object error, StackTrace st),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onError != null) {
      return onError(error, st);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult data(RecordsList value),
    @required TResult loading(RecordsLoading value),
    @required TResult onError(RecordsError value),
  }) {
    assert(data != null);
    assert(loading != null);
    assert(onError != null);
    return onError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult data(RecordsList value),
    TResult loading(RecordsLoading value),
    TResult onError(RecordsError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onError != null) {
      return onError(this);
    }
    return orElse();
  }
}

abstract class RecordsError implements Records {
  const factory RecordsError(Object error, StackTrace st) = _$RecordsError;

  Object get error;
  StackTrace get st;
  @JsonKey(ignore: true)
  $RecordsErrorCopyWith<RecordsError> get copyWith;
}
