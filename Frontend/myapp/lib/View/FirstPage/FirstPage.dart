import 'package:flutter/material.dart';
import 'MatchResultPage.dart';
import 'Ranking.dart';

class FirstPage extends StatelessWidget {
  var stil = TextStyle(
      fontWeight: FontWeight.w800,
      fontFamily: 'Bebas',
      letterSpacing: 0.5,
      fontSize: 25,
      decoration: TextDecoration.none);
  var stil_2 = TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w800,
      fontFamily: 'Bebas',
      letterSpacing: 0.5,
      fontSize: 25,
      decoration: TextDecoration.none);
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
                  padding: EdgeInsets.only(top: 150),
                  child: TextFormField(
                    controller: TextEditingController(),
                    autofocus: false,
                    decoration: InputDecoration(
                        icon: Icon(Icons.people),
                        hintText: "ENTER YOUR FIGHTER",
                        labelText: "FIGHTER A",
                        hintStyle: stil),
                    //autofillHints: names,
                  ),
                  width: 400,
                  height: 200,
                ),
                Container(
                    padding: EdgeInsets.only(top: 150),
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
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(25))),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MatchResultPage()));
                      },
                      child: Text(
                        'Rumble',
                        style: stil_2,
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
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(25))),
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Ranking()));
                    },
                    child: Text(
                      'Ranking',
                      style: stil_2,
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                //name
                Container(
                  padding: EdgeInsets.only(top: 150),
                  child: TextFormField(
                    controller: TextEditingController(),
                    autofocus: false,
                    decoration: InputDecoration(
                        icon: Icon(Icons.people),
                        hintText: "ENTER YOUR FIGHTER",
                        labelText: "FIGHTER B",
                        hintStyle: stil),
                    //autofillHints: names,
                  ),
                  width: 400,
                  height: 200,
                ),
                Container(
                    padding: EdgeInsets.only(top: 150),
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
