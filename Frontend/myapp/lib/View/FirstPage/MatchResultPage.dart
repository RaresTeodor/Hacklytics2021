import 'package:flutter/material.dart';
import 'Ranking.dart';
import 'MatchResultTable.dart';

class MatchResultPage extends StatelessWidget {
  var stil = TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w800,
      fontFamily: 'Roboto',
      letterSpacing: 0.5,
      fontSize: 20);
  @override
  Widget build(BuildContext context) {
    return new Container(
      color: Colors.blueGrey,
      child: Center(
        child: Column(
          children: [
            Container(
                padding: EdgeInsets.all(50),
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
                      child: TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Ranking()));
                          },
                          child: Text("Ranking", style: stil)),
                    )
                  ],
                )),
            Container(
              child: Image.asset(
                'assets/winner.png',
                scale: 1.5,
              ),
            ),
            Container(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 50),
                      child: Text("Randy Orton", style: stil),
                    ),
                    Container(
                        margin: EdgeInsets.all(30),
                        padding: EdgeInsets.only(right: 100),
                        child:
                            Image.asset('assets/images/randy.png', scale: 3.0))
                  ],
                ),
                Column()
              ],
            )),
          ],
        ),
      ),
    );
  }
}
