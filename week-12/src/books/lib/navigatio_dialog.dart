import 'package:flutter/material.dart';

class NavigationDialogScreen extends StatefulWidget {
  const NavigationDialogScreen({super.key});

  @override
  State<NavigationDialogScreen> createState() => _NavigationDialogScreenState();
}

class _NavigationDialogScreenState extends State<NavigationDialogScreen> {
  Color color = Colors.blue.shade700;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      appBar: AppBar(
        title: const Text("Navigation Dialog Screen - Maulana"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            _showColorDialog(context);
          },
          child: const Text("Change Color"),
        ),
      ),
    );
  }

  _showColorDialog(BuildContext context) async {
    await showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
              title: const Text("Very important question"),
              actions: <Widget>[
                TextButton(
                    onPressed: () {
                      color = Colors.cyan.shade700;
                      Navigator.pop(context, color);
                    },
                    child: const Text("Cyan")),
                TextButton(
                    onPressed: () {
                      color = Colors.indigo.shade700;
                      Navigator.pop(context, color);
                    },
                    child: const Text("Indigo")),
                TextButton(
                    onPressed: () {
                      color = Colors.limeAccent.shade700;
                      Navigator.pop(context, color);
                    },
                    child: const Text("Lime")),
              ],
              content: const Text("Please choose a color"));
        });
    setState(() {});
  }
}
