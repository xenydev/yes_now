import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:yes_now/models/app_state_models/bmiRecord_state.dart';
import 'package:yes_now/models/bmi_record/bmiRecord.dart';
import 'package:yes_now/state/app_state.dart';

class BMIStateNotifier extends StateNotifier<Records> {
  BMIStateNotifier(this.read) : super(Records.loading()) {
    _getAll();
  }

  final Reader read;

  Future<void> _getAll() async {
    //await Future.delayed(Duration(seconds: 2));
    try {
      final records = await read(repositoryProvider).getAll();
      state = Records.data(records);
    } on Exception catch (e, st) {
      state = Records.onError(e, st);
    }
  }

  Future<void> refresh() async {
    //await Future.delayed(Duration(seconds: 2));
    try {
      final records = await read(repositoryProvider).getAll();
      state = Records.data(records);
    } on Exception catch (e, st) {
      state = Records.onError(e, st);
    }
  }

  Future<void> retry() async {
    state = Records.loading();
    //await Future.delayed(Duration(seconds: 2));
    try {
      final records = await read(repositoryProvider).getAll();
      state = Records.data(records);
    } on Exception catch (e, st) {
      state = Records.onError(e, st);
    }
  }

  Future<void> createRecord(DateTime date,double bmi) async {
    //await Future.delayed(Duration(seconds: 2));

    final records = await read(repositoryProvider).getAll();
    String recordUpdate;

    if(records.map((e) => e.date).contains(date)){
      //Todo update value
      recordUpdate = records.first.id;
      state.maybeWhen(
        data: (records) {
          state = Records.data(
            [
              for (final item in records)
                if (item.id == recordUpdate)
                  item.copyWith(bmi: bmi)
                else
                  item
            ],
          );
        },
        orElse: () {},
      );

      try {
        await read(repositoryProvider).updateRecord(recordUpdate, bmi);
      } on Exception catch (e) {
        print(e);
        return null;
      }

    }else{
      state.maybeWhen(
        data: (record) {
          state = Records.data(
            record
              ..add(
                BMIRecord.create(date, bmi),
              ),
          );
        },
        orElse: () {},
      );

      try {
        await read(repositoryProvider).addRecord(
          BMIRecord(
              id: null , /*assign the id later*/
              date: date,
              bmi: bmi
          ),
        );
      } on Exception catch (e) {
        print(e);
        return null;
      }
    }
  }
}