import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'counter/bloc/counter_bloc.dart';
import 'counter/page/counter_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Bloc Tutorial",
      // We use Bloc Provider if we have a small toy application
      // But for production-grade or complex applications, we need to use
      // MultiBlocProvider
      // home: BlocProvider(
      //   create: (context) => CounterBloc(),
      //   child: const CounterPage(),
      // ),
      home: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => CounterBloc(),
          ),
        ],
        child: const CounterPage(),
      ),
    );
  }
}
