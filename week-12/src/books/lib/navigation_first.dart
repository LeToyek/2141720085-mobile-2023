import 'package:flutter/material.dart';

class NavigationFirst extends StatefulWidget {
  const NavigationFirst({super.key});

  @override
  State<NavigationFirst> createState() => _NavigationFirstState();
}

class _NavigationFirstState extends State<NavigationFirst> {
  Color color = Colors.blue.shade700;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      appBar: AppBar(
        title: const Text("Navigation First Screen- Maulana"),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              // _navigateAndGetColor(context);
            },
            child: const Text("Change Color")),
      ),
    );
  }
}
