import 'package:flutter/material.dart';
import 'package:tip_calculator/widgets/bill_amount.dart';
import 'package:tip_calculator/widgets/person_counter.dart';
import 'package:tip_calculator/widgets/taka_icon.dart';
import 'package:tip_calculator/widgets/tip_slider.dart';
import 'package:tip_calculator/widgets/total_per_person.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _personCount = 1;
  double _tipPercentage = 0;
  double _billTotal = 0;

  double totalPerPerson() {
    return (((_billTotal * _tipPercentage) + (_billTotal)) / _personCount);
  }

  double totalTip() {
    return ((_billTotal * _tipPercentage));
  }

  void _increment() {
    setState(() {
      _personCount++;
    });
  }

  void _decrement() {
    setState(() {
      if (_personCount > 1) {
        _personCount--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    var theme = Theme.of(context);
    final style = textTheme.titleMedium!.copyWith(
      color: theme.colorScheme.primary,
      fontWeight: FontWeight.bold,
    );

    double total = totalPerPerson();
    double tip = totalTip();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        TotalPerPerson(theme: theme, style: style, total: total),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(color: theme.colorScheme.primary, width: 2),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  BillAmount(
                    billamount: _billTotal.toString(),
                    onChaned: (String value) {
                      setState(() {
                        _billTotal = double.parse(value);
                      });
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: PersonCounter(
                      onIncrement: _increment,
                      onDecrement: _decrement,
                      theme: theme,
                      personCount: _personCount,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Tip', style: theme.textTheme.titleMedium),
                        Row(
                          children: [
                            TakaIcon(color: theme.colorScheme.onSurface),
                            Text(
                              tip.toStringAsFixed(1),
                              style: theme.textTheme.titleMedium,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Text("${(_tipPercentage * 100).round()}%"),
                  TipSlider(
                    tipPercentage: _tipPercentage,
                    onChanged: (double value) {
                      setState(() {
                        _tipPercentage = value;
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
