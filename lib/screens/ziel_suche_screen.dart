import 'package:flutter/material.dart';

class ZielSucheScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 42, 77, 143),
        title: Text("Ab in den Urlaub"),
        actions: [
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
      ),
      drawer: Drawer(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              _buildSearchBar(),
              _buildUpperPart(context),
              _buildLowerPart(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLowerPart() {
    return Container(
      //color: Colors.green,
      height: 270,
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage("assets/images/washington_square.jpg"),
        fit: BoxFit.cover,
      )),
    );
  }

  Widget _buildUpperPart(BuildContext context) {
    return Container(
      height: 350,
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage("assets/images/empire_state.jpg"),
              fit: BoxFit.cover,
            )),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(top: 24.0),
              child: Container(
                color: Color.fromARGB(255, 28, 52, 97),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 18.0, top: 8, right: 8, bottom: 8),
                  child: Text(
                    "familienfreundliches Hotel"
                            " in New York City..."
                        .toUpperCase(),
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: _buildOverlay(context),
          ),
        ],
      ),
    );
  }

  Widget _buildOverlay(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Container(
        height: 140,
        color: Color.fromARGB(220, 225, 255, 255),
        width: MediaQuery.of(context).size.width * 0.98,
        child: Column(
          children: [
            _buildUpperLine(),
            _buildLowerLine(),
          ],
        ),
      ),
    );
  }

  Widget _buildLowerLine() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
              width: 250,
              child: Text("1 Woche pro Person im stylischen"
                  " 5* Hotel. Noch mehr Text zum Hotel kommt hierhin.")),
          Text("ab 545 €",
              style: TextStyle(
                  color: Colors.green,
                  fontSize: 25,
                  fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }

  Widget _buildUpperLine() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 250,
            child: Text(
              "Park Lane Hotel, 36 Central Park South 59th ",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
          CircleAvatar(
            backgroundColor: Color.fromARGB(255, 42, 77, 143),
            minRadius: 26,
            child: Icon(
              Icons.card_travel_outlined,
              size: 35,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSearchBar() {
    return Container(
      height: 60,
      width: double.infinity,
      color: Color.fromARGB(255, 42, 77, 143),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 4,
              ),
              Icon(
                Icons.search_outlined,
                size: 40,
                color: Colors.white,
              ),
              SizedBox(
                width: 4,
              ),
              Text(
                "Ziel / Region / Hotel ",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Container(
              height: 1,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
