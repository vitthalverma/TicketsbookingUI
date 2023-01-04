import 'package:flutter/material.dart';
import '../utils/app_layout.dart';
import '../utils/app_styles.dart';

class Dash extends StatelessWidget {
  const Dash({super.key, this.isColor});
  final bool? isColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: isColor == null ? Styles.orangeColor : Colors.white,
      margin: isColor == null
          ? EdgeInsets.all(0)
          : EdgeInsets.symmetric(vertical: AppLayout.getWidth(05)),
      child: Row(
        children: [
          SizedBox(
            height: AppLayout.getHeight(20),
            width: AppLayout.getWidth(10),
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: isColor == null ? Colors.grey.shade300 : Colors.white,
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(AppLayout.getHeight(13)),
              child: LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
                  return Flex(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    direction: Axis.horizontal,
                    children: List.generate(
                      (constraints.constrainWidth() / 15).floor(),
                      (index) => SizedBox(
                        width: AppLayout.getWidth(5),
                        height: AppLayout.getHeight(2.5),
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                              color: isColor == null
                                  ? Colors.white
                                  : Colors.grey.shade300),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          SizedBox(
            height: AppLayout.getHeight(20),
            width: AppLayout.getWidth(10),
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: isColor == null ? Colors.grey.shade300 : Colors.white,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
