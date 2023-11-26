import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

import 'stream.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Stream Maulana',
        theme: ThemeData(
          useMaterial3: false,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          // useMaterial3: true,
        ),
        home: const StreamHomePage());
  }
}

class StreamHomePage extends StatefulWidget {
  const StreamHomePage({super.key});

  @override
  State<StreamHomePage> createState() => _StreamHomePageState();
}

class _StreamHomePageState extends State<StreamHomePage> {
  Color bgColor = Colors.blueGrey;
  late ColorStream colorStream;

  int lastnumber = 0;
  late StreamController numberStreamController;
  late NumberStream numberStream;

  late StreamTransformer transformer;

  void changeColor() async {
    colorStream.getColors().listen((eventColor) {
      setState(() {
        bgColor = eventColor;
      });
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    numberStream = NumberStream();
    numberStreamController = numberStream.controller;
    Stream stream = numberStreamController.stream;
    // stream.listen((event) {
    //   setState(() {
    //     lastnumber = event;
    //   });
    // }).onError((error) {
    //   setState(() {
    //     lastnumber = -1;
    //   });
    // });
    transformer = StreamTransformer<int, int>.fromHandlers(
        handleData: (int value, EventSink<int> sink) {
      sink.add(value * 10);
    }, handleError: (Object error, StackTrace stackTrace, EventSink<int> sink) {
      print("error $error");
      sink.add(-1);
    }, handleDone: (EventSink<int> sink) {
      sink.close();
    });
    stream.transform(transformer).listen((event) {
      setState(() {
        lastnumber = event;
      });
    }).onError((error) {
      print("error $error");
      setState(() {
        lastnumber = -1;
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    numberStreamController.close();
    super.dispose();
  }

  void addRandomNumber() {
    Random random = Random();
    int myNum = random.nextInt(10);
    numberStream.addNumberToSink(myNum);
    // numberStream.addError();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Stream Maulana'),
        ),
        body: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(lastnumber.toString()),
              ElevatedButton(
                onPressed: () {
                  addRandomNumber();
                },
                child: const Text('New Random Number'),
              ),
            ],
          ),
        ));
  }
}
