import 'package:app_in_den_urlaub_app/screens/luebeck_screen.dart';
import 'package:app_in_den_urlaub_app/screens/new_york_screen.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Da will ich hin"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text("New York"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NewYorkScreen(),
                  ),
                );
              },
            ),
            ElevatedButton(
              child: Text("Lübeck"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LuebeckScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
