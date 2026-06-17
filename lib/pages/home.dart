import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    var theme = Theme.of(context);
    final style = textTheme.titleMedium!.copyWith(
      color: theme.colorScheme.onPrimary,
      fontWeight: FontWeight.bold,
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            padding: EdgeInsets.all(18),
            decoration: BoxDecoration(
              color: theme.colorScheme.inversePrimary,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                Text('Total Per Person', style: style),
                Text(
                  '450&',
                  style: style.copyWith(
                    color: theme.colorScheme.onPrimary,
                    fontSize: theme.textTheme.displaySmall!.fontSize,
                  ),
                ),
              ],
            ),
          ),
        ),
        Card(child: Text('other Stuffs card')),
      ],
    );
  }
}
