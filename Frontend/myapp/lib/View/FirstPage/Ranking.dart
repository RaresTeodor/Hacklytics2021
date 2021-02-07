import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// import 'package:myapp/View/FirstPage/MatchResultTable.dart';

class Ranking extends StatelessWidget {
  @override
  var nume = ["Randy Orton", "Edge", "John Cena", "Batista"];
  var elo = ["1200", "1500", "1700", "1900"];

  var elevated_style = ElevatedButton.styleFrom(
    primary: Colors.black,
    onPrimary: Colors.white,
    shadowColor: Colors.red,
    elevation: 7,
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(25))),
  );
  var stil = TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w800,
      fontFamily: 'Roboto',
      letterSpacing: 0.5,
      fontSize: 20,
      decoration: TextDecoration.none);
  var stil_2 = TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w800,
      fontFamily: 'Roboto',
      letterSpacing: 0.5,
      fontSize: 20,
      decoration: TextDecoration.none);

  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      Container(
          padding: EdgeInsets.only(top: 100),
          color: Colors.white,
          child: ListView.separated(
              itemCount: nume.length,
              scrollDirection: Axis.vertical,
              separatorBuilder: (context, index) => Divider(
                    color: Colors.black,
                  ),
              itemBuilder: (BuildContext context, int index) {
                return Center(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                        width: 300,
                        child: Text(
                          (index + 1).toString(),
                          style: stil,
                        )),
                    Container(
                        width: 300, child: Text(nume[index], style: stil)),
                    Container(width: 300, child: Text(elo[index], style: stil)),
                  ],
                ));
              })),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text("Ranking", style: stil),
          Container(
              width: 150.0,
              height: 50.0,
              child: ElevatedButton(
                style: elevated_style,
                child: Text("Go back", style: stil_2),
                onPressed: () {
                  Navigator.pop(context);
                },
              ))
        ],
      )
    ]);
  }
}
