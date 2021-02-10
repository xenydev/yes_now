 import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:yes_now/app_config/constant.dart';
import 'package:yes_now/models/bmiResult_model.dart';

 final bmiProvider = StateNotifierProvider<BMINotifier>((ref) {
   return BMINotifier();
 });

class BMINotifier extends StateNotifier<double> {
  BMINotifier({double state}) : super(state = 0);

  void calculateBMI(h,w) {
    state = (w/(h*h)*10000);
  }
}


 final colorProvider = StateNotifierProvider<ColorNotifier>((ref) {
   return ColorNotifier(ref.read);
 });

 class ColorNotifier extends StateNotifier<BMIResult> {
   ColorNotifier(this.read,{BMIResult state}) : super(state =  BMIResult(color: Colors.grey,message: 'undefined'));

   final Reader read;

   void getColor() {
     double bmi = read(bmiProvider.state);

     if(bmi < 18.49){
       state = BMIResult(color: kUnderWeight,message: kUnderWeightMessage);
     }else if(bmi >= 18.5 && bmi < 24.9){
       state = BMIResult(color: kNormal,message: kNormalMessage);
     }else if (bmi >= 25 && bmi < 29.9){
       state = BMIResult(color: kOverWeight,message: kOverWeightMessage);
     }else if (bmi >= 30 && bmi < 39.9){
       state = BMIResult(color: kObeseI,message: kObeseIMessage);
     }else if (bmi > 40){
       state = BMIResult(color: kObeseII,message: kObeseIIMessage);
     }else{
       state = BMIResult(color: Colors.grey,message: 'undefined');
     }
   }
 }
