import 'dart:html';

import 'package:flutter/cupertino.dart';

// import 'package:myapp/View/FirstPage/MatchResultTable.dart';

class Ranking extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: 5,
          itemBuilder: (BuildContext context, int index) {
            return Text("Stats");
          }),
    );
  }
}
