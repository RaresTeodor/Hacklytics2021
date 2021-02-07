import 'dart:html';

import 'package:flutter/material.dart';
import 'package:myapp/View/FirstPage/Repository.dart';
import 'Ranking.dart';
import 'FirstPage.dart';

class MatchResultPage extends StatelessWidget {
  var stil = TextStyle(
      color: Colors.black,
      fontFamily: 'Bebas',
      letterSpacing: 2,
      fontSize: 60,
      decoration: TextDecoration.none);
  var stil_2 = TextStyle(
      color: Colors.white,
      fontFamily: 'Bebas',
      letterSpacing: 4,
      fontSize: 30,
      decoration: TextDecoration.none);

  var elevated_style = ElevatedButton.styleFrom(
      primary: Colors.black,
      onPrimary: Colors.white,
      shadowColor: Colors.red,
      elevation: 7,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25))),
      textStyle: TextStyle(
        fontFamily: 'Bebas',
        color: Colors.white,
        fontSize: 40,
      ));
  var f1 = Repository.data[0];
  var f2 = Repository.data[1];

  @override
  Widget build(BuildContext context) {
    var winner = "";
    HttpRequest.getString("127.0.0.1/show" + f1 + f2)
        .then((value) => winner = value);
    winner = winner.split(" ").join();
    winner = winner + ".png";
    return new Container(
      color: Colors.white10,
      child: Container(
        child: Column(
          children: [
            Container(
                padding: EdgeInsets.only(top: 20, left: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                        child: ElevatedButton(
                      style: elevated_style,
                      child: Text(
                        "SIMULATE ANOTHER FIGHT!",
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    )),
                    Container(
                      padding: EdgeInsets.only(right: 160),
                      child: Image.asset(
                        'assets/' + winner,
                        scale: 1,
                      ),
                    ),
                    Container(
                        padding: EdgeInsets.only(bottom: 20, right: 10),
                        child: ElevatedButton(
                          style: elevated_style,
                          child: Text("RANKING"),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Ranking()));
                          },
                        )),
                  ],
                )),
            Container(
                padding: EdgeInsets.only(top: 40),
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
                              padding: EdgeInsets.only(top: 40, bottom: 5),
                              child: Image.asset('assets/images/randy.png',
                                  scale: 2.5),
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
