import 'package:flutter/material.dart';
import 'ui/screen/sight_list_screen.dart';
import 'package:places/mocks.dart';

void main() {
  initMocks();
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: SightListScreen(), title: 'My Flutter Demo 4.8');
  }
}
