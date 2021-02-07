import 'package:flutter/material.dart';
import 'Ranking.dart';

class MatchResultPage extends StatelessWidget {
  var stil = TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w800,
      fontFamily: 'Roboto',
      letterSpacing: 0.5,
      fontSize: 20,
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
                      child: TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text('Simulate another fight', style: stil)),
                    ),
                    Container(
                      child: Image.asset(
                        'assets/winner.png',
                        scale: 1,
                      ),
                    ),
                    Container(
                        child: ElevatedButton(
                      style: elevated_style,
                      child: Text("Ranking"),
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
                        Container(
                          child: Text("Randy Orton", style: stil),
                        ),
                        Stack(
                          children: <Widget>[
                            Container(
                              child: Image.asset('assets/background.png',
                                  scale: 0.8),
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 20),
                              child: Image.asset('assets/images/randy.png',
                                  scale: 2.0),
                            ),
                          ],
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [Container()],
                    )
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
