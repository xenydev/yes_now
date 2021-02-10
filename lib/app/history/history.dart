import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:yes_now/models/bmi_record/bmiRecord.dart';
import 'package:yes_now/state/app_state.dart';

class HistoryScreen extends StatelessWidget {
  static const String routeName = '/history';

  @override
  Widget build(BuildContext context) {
    Color color = Colors.black87;
    String message = 'IDK';

    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Consumer(
            builder: (context, watch, child) {
              final recordsState = watch(recordsNotifierProvider.state);
              return recordsState.when(
                data: (records) {
                  return records.isNotEmpty
                      ? Column(
                          children: [
                            Container(
                              color: Colors.red,
                              height: height / 2.5,
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: [
                                  ...records.map((item) => ChartColumn(item: item)),
                                ],
                              ),
                            ),
                            ListView(
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              children: [
                                ...records.map((item) => RecordTile(item: item,color: color,message: message)),
                              ],
                            ),
                          ],
                        )
                      : Container(
                          alignment: Alignment.center,
                          height: height / 2.5,
                          child: Text('No records'),
                        );
                },
                loading: () => Center(
                  child: CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.black54),
                  ),
                ),
                onError: (e, sr) => Container(),
              );
            },
          ),
        ],
      ),
    );
  }
}

class RecordTile extends StatelessWidget {
  const RecordTile({
    Key key,
    this.item, this.color, this.message,
  }) : super(key: key);

  final BMIRecord item;
  final Color color;
  final String message;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(
        vertical: height * 0.03,
        horizontal: width * 0.05,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(Icons.circle, color: color, size: width * 0.08),
                  SizedBox(width: width * 0.02),
                  Text(
                    message,
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ],
              ),
              SizedBox(height: height * 0.01),
              Text(DateFormat('dd-MM-yyyy').format(item.date), style: Theme.of(context).textTheme.bodyText2),
            ],
          ),
          Container(
            decoration: BoxDecoration(
              color: color.withOpacity(0.2),
              borderRadius: BorderRadius.circular(20),
            ),
            padding: EdgeInsets.symmetric(
              vertical: height * 0.02,
              horizontal: width * 0.05,
            ),
            child: Text(
              item.bmi.toString(),
              style: TextStyle(color: Colors.black87, fontSize: 30),
            ),
          ),
        ],
      ),
    );
  }
}

class ChartColumn extends StatelessWidget {
  const ChartColumn({
    Key key,
    this.item,
  }) : super(key: key);

  final BMIRecord item;

  @override
  Widget build(BuildContext context) {
    return Text(item.date.toString());
  }
}
