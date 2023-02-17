import 'package:flutter/material.dart';
import 'description_place.dart';
import 'review_list.dart';
import 'header_appbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Davinci Trips'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _incrementCounter() {
    setState(() {});
  }

  String descriptionDummy =
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Mattis enim ut tellus elementum sagittis vitae et leo duis. At imperdiet dui accumsan sit amet nulla facilisi morbi. Amet consectetur adipiscing elit duis tristique sollicitudin nibh. Egestas purus viverra accumsan in nisl nisi scelerisque.";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(widget.title),
      // ),
      // body: DescriptionPlace(
      //   "Dubai",
      //   3,
      //   descriptionDummy,
      // ),
      // body: const ReviewList(),
      body: Stack(
        children: <Widget>[
          ListView(
            children: <Widget>[
              DescriptionPlace(
                "Dubai",
                3,
                descriptionDummy,
              ),
              const ReviewList(),
            ],
          ),
          const HeaderAppBar(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
