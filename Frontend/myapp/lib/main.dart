import 'package:flutter/material.dart';
import 'package:myapp/View/FirstPage/firstpage.dart';

void main() => runApp(MyApp());

/// This is the main application widget.
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Future UFC",
      home: Scaffold(body: FirstPage()),
    );
  }
}

// class MyStatefulWidget extends StatefulWidget {
//   MyStatefulWidget({Key key}) : super(key: key);

//   @override
//   _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
// }

// class _MyStatefulWidgetState extends State<MyStatefulWidget> {
//   int _selectedIndex = 0;
//   static List<Widget> _widgetOptions = <Widget>[
//     Text(
//       'Pagina 2',
//     ),
//     new FirstPage(),
//     Text(
//       'Pagina 3',
//     ),
//   ];

//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: _widgetOptions.elementAt(_selectedIndex),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         items: const <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//             icon: Icon(null),
//             label: 'Predict Match',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(null),
//             label: 'Result',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(null),
//             label: 'Ranking',
//           ),
//         ],
//         currentIndex: _selectedIndex,
//         selectedItemColor: Colors.amber[800],
//         onTap: _onItemTapped,
//       ),
//     );
//   }
// }
