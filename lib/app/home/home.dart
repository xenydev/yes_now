import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:yes_now/app_config/constant.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:yes_now/routing/app_router.dart';
import 'package:yes_now/state/app_state.dart';

class HomeScreen extends ConsumerWidget {
  static const String routeName = '/home';
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final colorState = watch(colorProvider.state);
    final bmiState = watch(bmiProvider.state);

    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    Color color = colorState.color;
    String message = colorState.message;
    double bmi = double.parse((bmiState).toStringAsFixed(2));
    int heightUser;
    double weightUser;

    return AnimatedContainer(
      duration: Duration(seconds: 1),
      curve: Curves.fastOutSlowIn,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          stops: [0.1, 0.5, 0.7, 0.9],
          colors: [
            color.withOpacity(1.0),
            color.withOpacity(0.95),
            color.withOpacity(0.9),
            color.withOpacity(0.85),
          ],
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'BMI CALCULATOR',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.bookmark),
              splashRadius: 25,
              onPressed: () {
                Navigator.pushNamed(context, AppRoutes.history);
              },
            ),
          ],
        ),
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: Container(
            height: height,
            child: Column(
              children: [
                buildBMIForm(context, height, width, _formKey, heightUser, weightUser, color),
                buildResults(context, height, width, color, bmi, message, weightUser),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildBMIForm(
      BuildContext context, double height, double width, formKey, int heightUser, double weightUser, Color color) {
    return Form(
      key: formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white30,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  margin: EdgeInsets.symmetric(
                    vertical: height * 0.01,
                    horizontal: width * 0.05,
                  ),
                  padding: EdgeInsets.symmetric(
                    vertical: height * 0.01,
                    horizontal: width * 0.02,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Height :',
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 16,
                        ),
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          fillColor: Colors.transparent,
                        ),
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(RegExp(r'^(?!0)\d{0,3}')),
                        ],
                        keyboardType: TextInputType.number,
                        validator: (value) =>
                            value.isEmpty || value.length < 3 || int.parse(value) <= 0 ? 'Invalid height' : null,
                        onSaved: (value) => heightUser = int.parse(value),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white30,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  margin: EdgeInsets.symmetric(
                    vertical: height * 0.01,
                    horizontal: width * 0.05,
                  ),
                  padding: EdgeInsets.symmetric(
                    vertical: height * 0.01,
                    horizontal: width * 0.02,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Weight :',
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 16,
                        ),
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          fillColor: Colors.transparent,
                        ),
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(RegExp(r'(^\d{0,3})(\.\d{0,2})?')),
                        ],
                        keyboardType: TextInputType.numberWithOptions(signed: true),
                        validator: (value) => value.isEmpty || value.length < 2 ? 'Invalid weight' : null,
                        onSaved: (value) => weightUser = double.parse(value),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: width * 0.2,
              vertical: height * 0.02,
            ),
            child: FlatButton(
              padding: EdgeInsets.symmetric(
                vertical: height * 0.02,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              color: Colors.white38,
              child: Text(
                'CALCULATE',
                style: TextStyle(fontSize: 16),
              ),
              onPressed: () {
                if (_formKey.currentState.validate()) {
                  _formKey.currentState.save();
                  context.read(bmiProvider).calculateBMI(heightUser, weightUser);
                  context.read(colorProvider).getColor();
                  FocusScope.of(context).unfocus(); //dismiss keyboard
                }
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget buildResults(
      BuildContext context, double height, double width, Color color, double bmi, String message, double weightUser) {
    double position;
    final triangleWidth = 20.0;
    String now = DateFormat("dd-MM-yyyy").format(DateTime.now());

    double pointerPosition(bmi, position) {
      final factor = (triangleWidth / 2 / 100);
      double mid = width / (2 + factor);
      double max = (mid * (2 - factor));
      double min = 0;

      return position = min;
    }

    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(20),
          ),
        ),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: height * 0.02,
                horizontal: width * 0.05,
              ),
              child: Material(
                color: Colors.transparent,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'BMI Score',
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 20,
                      ),
                    ),
                    Spacer(),
                    IconButton(
                      icon: Icon(Icons.save_alt_rounded),
                      splashRadius: 25,
                      onPressed: () {
                        bmi != 0
                            ? context.read(recordsNotifierProvider).createRecord(DateFormat('dd-MM-yyyy').parse(now), bmi)
                            : print('No data to save');
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.info_outline_rounded),
                      splashRadius: 25,
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(
                    vertical: height * 0.03,
                    horizontal: width * 0.05,
                  ),
                  decoration: BoxDecoration(
                    color: color.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    bmi.toString(),
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 50,
                    ),
                  ),
                ),
                SizedBox(width: width * 0.05),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.circle,
                      color: color,
                    ),
                    SizedBox(width: width * 0.02),
                    Text(
                      message,
                      style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: height * 0.03),
            Container(
              alignment: Alignment(-1, 0),
              margin: EdgeInsets.only(left: pointerPosition(bmi, position)),
              //color: Colors.redAccent.withOpacity(0.2),
              width: width * 0.9,
              child: ClipPath(
                clipper: TriangleClipper(),
                child: Container(
                  color: color,
                  height: 15,
                  width: triangleWidth,
                ),
              ),
            ),
            SizedBox(height: height / 300),
            BMIBarIndicator(
              width: width * 0.9,
              background: Colors.grey,
              fractionLimit: width,
              fractions: [
                BarFraction(size: width / 5, color: kUnderWeight),
                BarFraction(size: width / 5, color: kNormal),
                BarFraction(size: width / 5, color: kOverWeight),
                BarFraction(size: width / 5, color: kObeseI),
                BarFraction(size: width / 5, color: kObeseII),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class BarFraction {
  final double size;
  final Color color;

  BarFraction({this.size, this.color});
}

class BMIBarIndicator extends StatelessWidget {
  BMIBarIndicator(
      {Key key, @required this.width, this.radius, this.fractions, this.fractionLimit, this.background = Colors.grey})
      : assert(width != null),
        assert(fractions != null),
        super(key: key);

  final double width;
  final double radius;
  final List<BarFraction> fractions;
  final double fractionLimit;
  final Color background;

  double _getValuesSum() {
    double sum = 0;
    fractions.forEach((single) => sum += single.size);
    return sum;
  }

  Widget _createSingle(BarFraction singleFraction) {
    return SizedBox(
      width: (singleFraction.size * width) / (fractionLimit ?? _getValuesSum()),
      child: Container(color: singleFraction.color),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (fractionLimit != null && fractionLimit < _getValuesSum()) {
      print("assetsSum < _getValuesSum() - Check your values!");
      return Container();
    }

    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(10)),
      child: Container(
        decoration: new BoxDecoration(
          color: background,
        ),
        width: width,
        height: 20,
        child: Row(children: fractions.map((singleFraction) => _createSingle(singleFraction)).toList()),
      ),
    );
  }
}

class TriangleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(size.width, 0.0);
    path.lineTo(size.width / 2, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(TriangleClipper oldClipper) => false;
}
