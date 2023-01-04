import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../utils/app_layout.dart';
import '../utils/app_styles.dart';

class AppColumnLayout extends StatelessWidget {
  const AppColumnLayout(
      {super.key,
      required this.upperText,
      required this.lowerText,
      this.isColor,
      required this.alignment});
  final String upperText;
  final String lowerText;
  final CrossAxisAlignment alignment;
  final bool? isColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        Text(
          upperText,
          style: isColor == null
              ? Styles.headLineStyles3.copyWith(color: Colors.white)
              : Styles.headLineStyles3,
        ),
        Gap(AppLayout.getHeight(5)),
        Text(
          lowerText,
          style: isColor == null
              ? Styles.headLineStyles4.copyWith(color: Colors.white)
              : Styles.headLineStyles4,
        ),
      ],
    );
  }
}
