import 'package:counter/screens/home_screen.dart';
import 'package:counter/view_model/counter_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ChangeNotifierProvider(
        create: (context)=>CounterModel(),
        child: HomeScreen(),
      ),
    );
  }
}
