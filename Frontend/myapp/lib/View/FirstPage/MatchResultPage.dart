import 'package:flutter/material.dart';

class MatchResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      color: Colors.blueGrey,
      child: Center(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  child: TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        'Simulate another fight',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w800,
                          fontFamily: 'Roboto',
                          letterSpacing: 0.5,
                          fontSize: 20,
                        ),
                      )),
                ),
                Container(
                  child: TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text("Ranking")),
                )
              ],
            ),
            Text(
              "Winner",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w800,
                fontFamily: 'Roboto',
                letterSpacing: 0.5,
                fontSize: 20,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  children: [
                    Text(
                      "Randy Orton",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w800,
                        fontFamily: 'Roboto',
                        letterSpacing: 0.5,
                        fontSize: 20,
                      ),
                    ),
                    Image(
                      image: AssetImage('assets/randy.png'),
                    ),
                  ],
                ),
                Column(
                  children: [],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
