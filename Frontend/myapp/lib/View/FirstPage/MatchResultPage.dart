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
  @override
  Widget build(BuildContext context) {
    return new Container(
      color: Colors.white10,
      child: Container(
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
                      child: Padding(
                          padding: EdgeInsets.only(left: 150.0, right: 0.0),
                          child: RaisedButton(
                            textColor: Colors.white,
                            color: Colors.black,
                            child: Text("Ranking"),
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(30.0),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Ranking()));
                            },
                          )),
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
                      child: Text("Randy Orton", style: stil),
                    ),
                    Container(
                        child:
                            Image.asset('assets/images/randy.png', scale: 3.0))
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.all(20),
                      child: Table(
                        defaultColumnWidth: FixedColumnWidth(120.0),
                        border: TableBorder.all(
                            color: Colors.black,
                            style: BorderStyle.solid,
                            width: 2),
                        children: [
                          TableRow(children: [
                            Column(children: [Text('Stats', style: stil)]),
                            Column(children: [Text('Nume1', style: stil)]),
                            Column(children: [Text('Nume2', style: stil)]),
                          ]),
                          TableRow(children: [
                            Column(children: [Text('Javatpoint', style: stil)]),
                            Column(children: [Text('Flutter', style: stil)]),
                            Column(children: [Text('5*', style: stil)]),
                          ]),
                          TableRow(children: [
                            Column(children: [Text('Javatpoint', style: stil)]),
                            Column(children: [Text('MySQL', style: stil)]),
                            Column(children: [Text('5*', style: stil)]),
                          ]),
                          TableRow(children: [
                            Column(children: [Text('Javatpoint', style: stil)]),
                            Column(children: [Text('ReactJS', style: stil)]),
                            Column(children: [Text('5*', style: stil)]),
                          ]),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            )),
          ],
        ),
      ),
    );
  }
}
