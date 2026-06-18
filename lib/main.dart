import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
          title: Center(child: Text("Bill Split & Tip")),
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SvgPicture.asset(
              'assets/icons/logo.svg',
              height: 20.0,
              width: 20.0,
              semanticsLabel: 'Logo', // Good for accessibility
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Switch(value: true, onChanged: null),
            ),
          ],
        ),
        body: Home(),
      ),
    );
  }
}
