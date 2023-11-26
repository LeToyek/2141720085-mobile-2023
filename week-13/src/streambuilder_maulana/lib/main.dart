import 'package:flutter/material.dart';
import 'package:streambuilder_maulana/stream.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Streambuilder Maulana',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: false,
      ),
      home: const StreamHomePage(),
    );
  }
}

class StreamHomePage extends StatefulWidget {
  const StreamHomePage({super.key});

  @override
  State<StreamHomePage> createState() => _StreamHomePageState();
}

class _StreamHomePageState extends State<StreamHomePage> {
  late Stream<int> numberStream;

  @override
  void initState() {
    // TODO: implement initState
    numberStream = NumberStream().getNumbers();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Streambuilder Maulana'),
        ),
        body: StreamBuilder(
            stream: numberStream,
            initialData: 0,
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                return const Center(
                  child: Text("Error!"),
                );
              } else if (snapshot.hasData) {
                return Center(
                  child: Text(
                    snapshot.data.toString(),
                    style: const TextStyle(fontSize: 96),
                  ),
                );
              } else {
                return const SizedBox.shrink();
              }
            }));
  }
}
