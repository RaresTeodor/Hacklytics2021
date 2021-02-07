import 'package:flutter/material.dart';
import 'MatchResultPage.dart';
import 'Repository.dart';

class FirstPage extends StatelessWidget {
  @override
  var fighter_1 = TextEditingController();
  var fighter_2 = TextEditingController();

  Widget build(BuildContext context) {
    Repository data = new Repository();
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
                    controller: fighter_1,
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
                    child: Image.asset('assets/ufclogo.png')),
                Container(
                    margin: EdgeInsets.only(bottom: 50),
                    child: ElevatedButton(
                      onPressed: () {
                        Repository.data.add(fighter_1.text);
                        Repository.data.add(fighter_2.text);

                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MatchResultPage()));
                      },
                      child: Text('Rumble'),
                    )),
                Container(
                    child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MatchResultPage()));
                  },
                  child: Text('Ranking'),
                ))
              ],
            ),
            Column(
              children: [
                //name
                Container(
                  child: TextFormField(
                    controller: fighter_2,
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
                    padding: EdgeInsets.only(top: 50),
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
