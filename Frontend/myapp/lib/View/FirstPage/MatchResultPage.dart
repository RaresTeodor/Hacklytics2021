import 'dart:html';

import 'package:flutter/material.dart';
import 'Ranking.dart';
import 'FirstPage.dart';

class MatchResultPage extends StatelessWidget {
  var stil = TextStyle(
      color: Colors.black,
      fontFamily: 'WWE',
      letterSpacing: 2,
      fontSize: 50,
      decoration: TextDecoration.none);
  var stil_2 = TextStyle(
      color: Colors.white,
      fontFamily: 'WWE',
      letterSpacing: 3,
      fontSize: 30,
      decoration: TextDecoration.none);

  var elevated_style = ElevatedButton.styleFrom(
      primary: Colors.black,
      onPrimary: Colors.grey,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25))),
      textStyle: TextStyle(
        color: Colors.white,
        fontSize: 40,
      ));
  @override
  Widget build(BuildContext context) {
    return new Container(
      color: Colors.white10,
      child: Container(
        child: Column(
          children: [
            Container(
                padding: EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                        child: ElevatedButton(
                      style: elevated_style,
                      child: Text(
                        "Simulate another fight!",
                        style: stil_2,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    )),
                    Container(
                      padding: EdgeInsets.only(right: 200),
                      child: Image.asset(
                        'assets/winner.png',
                        scale: 1,
                      ),
                    ),
                    Container(
                        child: ElevatedButton(
                      style: elevated_style,
                      child: Text("Ranking", style: stil_2),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Ranking()));
                      },
                    )),
                  ],
                )),
            Container(
                padding: EdgeInsets.only(top: 100),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      children: [
                        Container(child: Text("Randy Orton", style: stil)),
                        Stack(
                          children: <Widget>[
                            Container(
                              child: Image.asset('assets/background.png',
                                  scale: 0.8),
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 80),
                              child: Image.asset('assets/images/randy.png',
                                  scale: 2.0),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
