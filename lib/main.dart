import 'package:flutter/material.dart';
import 'package:tip_calculator/pages/home.dart';

void main() {
  runApp(const MTip());
}

class MTip extends StatelessWidget {
  const MTip({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurpleAccent),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("This is an app bar"),
          leading: Text('data'),
          actions: [Text("ooh"), Text("yes")],
        ),
        body: Home(),
      ),
    );
  }
}
