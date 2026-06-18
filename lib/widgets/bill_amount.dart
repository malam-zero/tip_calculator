import 'package:flutter/material.dart';
import 'package:tip_calculator/widgets/taka_icon.dart';

class BillAmount extends StatelessWidget {
  const BillAmount({
    super.key,
    required this.billamount,
    required this.onChaned,
  });
  final String billamount;
  final ValueChanged<String> onChaned;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        prefixIcon: Padding(
          padding: const EdgeInsets.all(15.0),
          child: TakaIcon(color: Color(0xff000000)),
        ),
        labelText: 'Bill Amount',
      ),
      keyboardType: TextInputType.numberWithOptions(),
      onChanged: (value) {
        onChaned(value);
      },
    );
  }
}
