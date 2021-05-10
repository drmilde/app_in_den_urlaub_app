import 'package:app_in_den_urlaub_app/screens/luebeck_screen.dart';
import 'package:app_in_den_urlaub_app/screens/new_york_screen.dart';
import 'package:flutter/material.dart';

class Eintrag {
  String city;
  Widget seite;
  Eintrag(this.city, this.seite);
}

class StadtAuswahlScreen extends StatelessWidget {
  List<Eintrag> cities = [
    Eintrag("New York City", NewYorkScreen()),
    Eintrag("Lübeck", LuebeckScreen()),
    /*
    "Zandvoort",
    "Campinas",
    "Ballermann",
    "Athen",
    "Madrid",
    "Barcelona",
    "Paris",
    "London",
    "Glasgow",
    "Dublin",
    "Stockholm",
    "Rom",
    "Dubrovnik",
    "Prag",
    "Berlin",
    "Hamburg",
    "Mecklenburger Seenplatte",
    "Potsdam",
    "Kopenhagen",
    "Sylt",
    "Borkum",
    "Handestadt Rostock",
    "Handestadt Greifswald",
    "Handestadt Lemgo",
    "Handestadt Hamburg",
    "Handestadt Bremen",
    "Stuttgart",
    "Mainz",
    "Koblenz",

     */
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Wähle einen Zielort")),
      body: Container(
          child: Column(
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: 70,
            color: Colors.green,
            child: Text("Hier kannst Du eine Stadt auswählen:"),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: cities.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: (Text(
                    cities[index].city,
                    style: TextStyle(fontSize: 20),
                  )),
                  subtitle: Text("Eine kurze Beschreibung"),
                  leading: Icon(Icons.ac_unit_outlined),
                  trailing: Icon(Icons.call),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => cities[index].seite,
                        ));
                  },
                );
              },
            ),
          ),
          Container(
            height: 200,
            child: Placeholder(),
          )
        ],
      )),
    );
  }
}
