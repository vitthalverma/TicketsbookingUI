import 'package:book_tickets/utils/app_layout.dart';
import 'package:book_tickets/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HotelScreen extends StatelessWidget {
  const HotelScreen({super.key, required this.hotel});
  final Map<String, dynamic> hotel;

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      margin: const EdgeInsets.only(right: 17, top: 6),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            blurRadius: 20,
            spreadRadius: 5,
          ),
        ],
        color: Styles.primaryColor,
        borderRadius: BorderRadius.circular(24),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
      width: size.width * 0.6,
      height: AppLayout.getHeight(350),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /*
          this container os for hotel image
          */
          Container(
            height: AppLayout.getHeight(200),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Styles.primaryColor,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/${hotel['image']}'),
              ),
            ),
          ),
          const Gap(10),
          Text(
            'Open Space',
            style: Styles.headLineStyles2.copyWith(
              color: Styles.kakicolor,
            ),
          ),
          const Gap(5),
          Text(
            '${hotel['place']}',
            style: Styles.headLineStyles4.copyWith(
              color: Colors.white,
            ),
          ),
          const Gap(5),
          Text(
            'Rs.${hotel['price']}/night',
            style: Styles.headLineStyles.copyWith(
              color: Styles.kakicolor,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
