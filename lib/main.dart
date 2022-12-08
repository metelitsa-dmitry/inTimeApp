import 'package:flutter/material.dart';
import 'package:in_time/time_set_feature/presentation/screens/timeset_screen/time_set_screen.dart';

void main() {


  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TimeSetScreen(),
    );
  }
}



