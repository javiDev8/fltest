import 'package:fltest/screens/home/home_screen.dart';
import 'package:fltest/widgets/navbar_widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    int index = 0;

    return MaterialApp(
      home: StatefulBuilder(
        builder: (context, setState) => Scaffold(
          bottomNavigationBar: Navbar(
            onSelected: (int i) {
              setState(() {
                index = i;
              });
            },
          ),
          body: IndexedStack(
            index: index,
            children: [
              HomeScreen(),
              Center(child: Text('screen B')),
              Center(child: Text('pantalla 3')),
            ],
          ),
        ),
      ),
    );
  }
}
