import 'package:flutter/material.dart';
class CounterModel extends ChangeNotifier {
 int count=0;
 ///
 /// increase the counter value
 void increment(){
   count++;
   notifyListeners();
 }
 ///
 /// decrease the counter value
 void decrement(){
   if(count>0){
     count--;
   }
   notifyListeners();
 }
 ///
 /// reset the counter
 void resetCounter(){
   count=0;
   notifyListeners();
 }

}
