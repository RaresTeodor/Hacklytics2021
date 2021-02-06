import 'dart:html';

import 'package:flutter/material.dart';
import 'MatchResultPage.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // List<String> names = () {
    //   HttpRequest.getString('127.0.0.1/names')
    //       .then((result) => {result.split("\n,")});
    // } as List<String>;

    return new Container(
        color: Colors.lightBlue,
        child: Column(
          children: [
            Text("Welcome to Futer UFC"),
            Row(
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
                      height: 400,
                    )
                  ],
                )
              ],
            ),
            TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MatchResultPage()));
                },
                child: Text("Rumble!")),
          ],
        ));
  }
}

// class FirstPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return new Scaffold(body: new Item());
//   }
// }

// class Item extends StatelessWidget {
//   final left = new Container(
//     padding: new EdgeInsets.only(left: 8.0),
//     child: new TextField(
//       obscureText: true,
//       decoration: InputDecoration(
//         border: OutlineInputBorder(),
//         labelText: 'Password',
//       ),
//     ),
//   );

//   final middle = new Container(
//       padding: new EdgeInsets.only(left: 8.0),
//       child: new TextButton(
//         onPressed: () {
//           /*...*/
//         },
//         child: Text(
//           "Insert",
//           style: TextStyle(fontSize: 18.0),
//         ),
//       ));

//   final right = new Container(
//     padding: new EdgeInsets.only(left: 8.0),
//     child: new TextField(
//       obscureText: true,
//       decoration: InputDecoration(
//         border: OutlineInputBorder(),
//         labelText: 'Password',
//       ),
//     ),
//   );

//   @override
//   Widget build(BuildContext context) {
//     return new Scaffold(
//       body: new Container(
//         child: new Row(
//           children: [
//             left,
//             middle,
//             right,
//           ],
//         ),
//       ),
//     );
//   }
// }
