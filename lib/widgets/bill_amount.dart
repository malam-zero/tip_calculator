import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
          child: SvgPicture.asset(
            'assets/icons/bdt.svg',
            width: 20,
            height: 20,
          ),
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
