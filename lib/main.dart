import 'package:flutter/material.dart';
import 'package:tic_tac_toe/homescreen.dart';
import 'package:provider/provider.dart';
import 'package:tic_tac_toe/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'X O',
        home: GameScreen(),
      ),
    );
  }
}
