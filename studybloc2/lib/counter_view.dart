import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:studybloc2/event/counter_event.dart';

import 'bloc/counter_bloc.dart';

class Counter_View extends StatelessWidget {
  const Counter_View({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
          child:BlocBuilder<CounterBloc,int>(
            builder: (context,counter){
              return  Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "two actions/events in here: ",
                    style: TextStyle(fontSize: 25),
                  ),
                  Container(
                    child: FlatButton(
                      key: const Key('counterView_increment_floatingActionButton'),
                      child: Text(
                        "increment",
                        style: TextStyle(fontSize: 15, color: Colors.black),
                      ),
                      color: Colors.amber,
                      onPressed: () {
                        print('tang++');
                        context.read<CounterBloc>().add(CounterEvent.increment);
                        },
                    ),
                  ),

                  Text('result is $counter', style: TextStyle(fontSize: 20, color: Colors.red),),
                  Container(
                    child: FlatButton(
                      child: Text(
                        "decrement",
                        style: TextStyle(fontSize: 15, color: Colors.black),
                      ),
                      color: Colors.amber,
                      onPressed: () {
                        print('giam--');
                        context.read<CounterBloc>().add(CounterEvent.decrement);
                      },
                    ),
                  )
                ],
              );
            },
          ) ),
    );
  }
}