import 'package:flutter/material.dart';

import '../utils/app_layout.dart';
import '../utils/app_styles.dart';

class TicketTabs extends StatelessWidget {
  const TicketTabs(
      {super.key, required this.firstTabname, required this.secondTabName});
  final String firstTabname;
  final String secondTabName;

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return FittedBox(
      child: Container(
        padding: const EdgeInsets.all(3.5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppLayout.getHeight(50)),
          color: const Color(0xFFF4F6FD),
        ),
        child: Row(
          children: [
            /*
                  firstTabname
                  */

            Container(
              width: size.width * 0.44,
              height: AppLayout.getHeight(30),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.horizontal(
                    left: Radius.circular(AppLayout.getHeight(50)),
                  ),
                  color: Colors.white),
              child: Center(
                child: Text(
                  firstTabname,
                  style: Styles.headLineStyles4.copyWith(color: Colors.black),
                ),
              ),
            ),
            /*
                  secondTabName
                  */
            Container(
              width: size.width * 0.44,
              height: AppLayout.getHeight(30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.horizontal(
                  right: Radius.circular(AppLayout.getHeight(50)),
                ),
              ),
              child: Center(
                child: Text(
                  secondTabName,
                  style: Styles.headLineStyles4.copyWith(color: Colors.black),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
