import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  final void Function(int) onSelected;

  const Navbar({super.key, required this.onSelected});

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      onDestinationSelected: (i) {
        onSelected(i);
      },
      destinations: [
        NavigationDestination(icon: Icon(Icons.sell), label: 'A'),
        NavigationDestination(icon: Icon(Icons.home), label: 'B'),
        NavigationDestination(icon: Icon(Icons.settings), label: '3'),
      ],
    );
  }
}
