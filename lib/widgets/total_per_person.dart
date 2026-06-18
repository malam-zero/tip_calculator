import 'package:flutter/material.dart';
import 'package:tip_calculator/widgets/taka_icon.dart';

class TotalPerPerson extends StatelessWidget {
  const TotalPerPerson({
    super.key,
    required this.theme,
    required this.style,
    required this.total,
  });

  final ThemeData theme;
  final TextStyle style;
  final double total;

  @override
  Widget build(BuildContext context) {
    return Padding(
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TakaIcon(color: const Color(0xFFFFFFFF)),
                Text(
                  total.toStringAsFixed(1),
                  style: style.copyWith(
                    color: theme.colorScheme.onPrimary,
                    fontSize: theme.textTheme.displaySmall!.fontSize,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
