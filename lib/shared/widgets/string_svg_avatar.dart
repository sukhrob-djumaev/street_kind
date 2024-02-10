import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class StringSvgAvatar extends StatelessWidget {
  final String svgString;
  const StringSvgAvatar({super.key, required this.svgString});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.string(svgString);
  }
}
