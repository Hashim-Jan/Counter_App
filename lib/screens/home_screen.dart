import 'package:counter/view_model/counter_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<CounterModel>(
      builder: (context,model,child){
        return Scaffold(
          appBar: AppBar(
            title: Text('Counter',),
          ),
          body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('You have pushed',textScaleFactor: 1.3,),
                    Text(
                      '${model.count}',
                      textScaleFactor: 1.5,
                    ),
                  ],
                ),
              ),
            ///
            /// Counter buttons
          floatingActionButton: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              FloatingActionButton(
                child: Icon(Icons.add),
                onPressed: ()=>model.increment(),
              ),
              FloatingActionButton(
                child:Text('-',textScaleFactor: 1.8,),
                onPressed: ()=>model.decrement(),
              ),
              FloatingActionButton(
                child:Icon(Icons.autorenew),
                onPressed: ()=>model.resetCounter(),
              ),
            ],
          )
        );
      },
    );
  }
}
