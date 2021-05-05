import 'package:flutter/material.dart';

class LuebeckScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 48, 52, 113),
        title: Text("Ab in den Urlaub"),
        actions: [
          IconButton(
            icon: Icon(Icons.more_vert_outlined),
            onPressed: () {},
          ),
        ],
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
              "Willkommen im ältesten Kaufmannsviertel"
              " der Hansestadt Lübeck!"),
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
                    child: Icon(
                      Icons.card_travel_outlined,
                      size: 40,
                    ),
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
                    child: Text(
                        "Wir begrüßen Sie heute in unserem"
                        " günstigen Design Hotel.",
                        maxLines: 2,
                        style: TextStyle(
                          fontSize: 14,
                        )),
                  ),
                  Text("ab 350€",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      ))
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
      width: double.infinity,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 15,
              ),
              Icon(
                Icons.search,
                color: Colors.white,
                size: 30,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "Ziel / Region / Hotel",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 4,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Container(
              color: Colors.white,
              height: 1,
              width: double.infinity,
            ),
          ),
        ],
      ),
    );
  }
}
