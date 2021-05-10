import 'package:app_in_den_urlaub_app/screens/main_screen.dart';
import 'package:app_in_den_urlaub_app/screens/stadt_auswahl_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: NewYorkScreen(),
      home: StadtAuswahlScreen(),
    );
  }
}
