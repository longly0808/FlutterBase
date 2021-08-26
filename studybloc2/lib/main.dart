import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:studybloc2/bloc/counter_bloc.dart';
import 'package:studybloc2/counter_observer.dart';

import 'counter_view.dart';

void main() {

  runApp(apptext());
}


class apptext extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          body:  BlocProvider(
            create: (_)=>CounterBloc(0),
            child: Counter_View(),
          ),
        ),
    );
  }
}


