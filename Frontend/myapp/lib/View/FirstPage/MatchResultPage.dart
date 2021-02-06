import 'package:flutter/material.dart';

class MatchResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      color: Colors.lightGreenAccent,
      child: Center(
        child: Column(
          children: [
            Text("The victor"),
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Simulate another fight"))
          ],
        ),
      ),
    );
  }
}
