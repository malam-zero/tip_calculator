import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TakaIcon extends StatelessWidget {
  const TakaIcon({super.key, required this.color});
  final Color color;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      'assets/icons/bdt.svg',
      width: 20,
      height: 20,
      colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
    );
  }
}
