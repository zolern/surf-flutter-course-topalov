import 'package:flutter/material.dart';
import 'ui/screen/sight_list_screen.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: SightListScreen(), title: 'My Flutter Demo 4.2');
  }
}
