import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tip_calculator/pages/home.dart';

void main() {
  runApp(const MTip());
}

class MTip extends StatefulWidget {
  const MTip({super.key});

  @override
  State<MTip> createState() => _MTipState();
}

class _MTipState extends State<MTip> {
  bool _isDarkMode = false;

  void _toggleTheme(bool value) {
    setState(() {
      _isDarkMode = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF6750A4), // Modern Deep Purple
          brightness: _isDarkMode ? Brightness.dark : Brightness.light,
        ),
        textTheme: GoogleFonts.poppinsTextTheme(
          _isDarkMode
              ? ThemeData.dark().textTheme
              : ThemeData.light().textTheme,
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              "Bill Split & Tip",
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
                letterSpacing: 0.5,
              ),
            ),
          ),
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
              child: Switch(value: _isDarkMode, onChanged: _toggleTheme),
            ),
          ],
        ),
        body: Home(),
      ),
    );
  }
}
