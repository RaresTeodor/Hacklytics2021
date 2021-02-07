import 'package:flutter/material.dart';
import 'MatchResultPage.dart';
import 'Ranking.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // List<String> names = () {
    //   HttpRequest.getString('127.0.0.1/names')
    //       .then((result) => {result.split("\n,")});
    // } as List<String>;
    return new Container(
        child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //Fighter 1
            Column(
              children: [
                //name
                Container(
                  child: TextFormField(
                    controller: TextEditingController(),
                    autofocus: false,
                    decoration: InputDecoration(
                        icon: Icon(Icons.people),
                        hintText: "Enter your fighter",
                        labelText: "Figher A"),
                    //autofillHints: names,
                  ),
                  width: 400,
                  height: 100,
                ),
                Container(
                    padding: EdgeInsets.only(top: 200),
                    child: Image.asset(
                      'assets/images/randy.png',
                      scale: 3,
                    ))
              ],
            ),
            Column(
              children: [
                Container(
                    padding: EdgeInsets.only(bottom: 50),
                    child: Image.asset('assets/ufclogo.png', scale: 1.5)),
                Container(
                    margin: EdgeInsets.only(bottom: 50),
                    width: 100.0,
                    height: 50.0,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.black,
                        onPrimary: Colors.white,
                        shadowColor: Colors.red,
                        elevation: 7,
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MatchResultPage()));
                      },
                      child: Text(
                        'Rumble',
                        style: TextStyle(fontSize: 20),
                      ),
                    )),
                Container(
                  width: 100.0,
                  height: 50.0,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.black,
                      onPrimary: Colors.white,
                      shadowColor: Colors.red,
                      elevation: 7,
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Ranking()));
                    },
                    child: Text(
                      'Ranking',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                //name
                Container(
                  child: TextFormField(
                    controller: TextEditingController(),
                    autofocus: false,
                    decoration: InputDecoration(
                        icon: Icon(Icons.people),
                        hintText: "Enter your fighter",
                        labelText: "Figher B"),
                    //autofillHints: names,
                  ),
                  width: 400,
                  height: 100,
                ),
                Container(
                    padding: EdgeInsets.only(top: 200),
                    child: Image.asset(
                      'assets/images/randy.png',
                      scale: 3,
                    ))
              ],
            )
          ],
        ),
      ],
    ));
  }
}
