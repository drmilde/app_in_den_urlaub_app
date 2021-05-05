import 'package:flutter/material.dart';

class LuebeckScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 48, 52, 113),
        title: Text("Ab in den Urlaub"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildSearchBar(),
            _buildUpperPart(context),
            Container(
              //color: Colors.green,
              height: 270,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/luebeck_turm.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildUpperPart(BuildContext context) {
    return Container(
      height: 370,
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/luebeck_kirche.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          _buildInfoBox(context),
          _buildBlueBanner(
              context,
              "Luxuriöses Anwesen gesucht"
              " kshads kjahsd kajd adjkhasd"),
        ],
      ),
    );
  }

  Widget _buildInfoBox(BuildContext context) {
    return Positioned(
      right: 0,
      bottom: 10,
      child: Container(
        color: Color.fromARGB(190, 255, 255, 255),
        height: 140,
        width: MediaQuery.of(context).size.width * 0.97,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 250,
                    child: Text("Motel One Lübeck, Schüsselbuden 15",
                        style: TextStyle(
                          fontSize: 18,
                        )),
                  ),
                  CircleAvatar(
                    backgroundColor: Color.fromARGB(255, 48, 52, 113),
                    radius: 30,
                    child: Icon(Icons.card_travel_outlined, size: 40,),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 250,
                    child: Text("1 Woche Halbpension ist teuer",
                        style: TextStyle(
                          fontSize: 12,
                        )),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildBlueBanner(BuildContext context, String text) {
    return Positioned(
      top: 16,
      left: 0,
      child: Container(
        color: Color.fromARGB(255, 41, 66, 118),
        height: 30,
        width: MediaQuery.of(context).size.width * 0.85,
        child: Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Center(
              child: Text(
            text.toUpperCase(),
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: Colors.white,
            ),
          )),
        ),
      ),
    );
  }

  Widget _buildSearchBar() {
    return Container(
      color: Color.fromARGB(255, 48, 52, 113),
      height: 50,
      child: Placeholder(
        fallbackHeight: 50,
      ),
    );
  }
}
