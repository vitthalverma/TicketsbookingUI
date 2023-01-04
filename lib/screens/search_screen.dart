import 'package:book_tickets/utils/app_layout.dart';
import 'package:book_tickets/utils/app_styles.dart';
import 'package:book_tickets/widgets/app_icon_text.dart';
import 'package:book_tickets/widgets/ticket_tabs.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
          vertical: AppLayout.getHeight(35),
          horizontal: AppLayout.getWidth(22),
        ),
        children: [
          Gap(AppLayout.getHeight(40)),
          Text(
            'What are\nyou looking for?',
            style: Styles.headLineStyles
                .copyWith(fontSize: AppLayout.getWidth(35)),
          ),
          Gap(AppLayout.getHeight(20)),
          /*
           airline tickets and hotels
          */
          TicketTabs(firstTabname: 'Airline Tickets', secondTabName: 'Hotels'),
          Gap(AppLayout.getHeight(30)),
          /*
           Departure and Arrival
          */
          const AppIconText(
            text: 'Departure',
            sideIcon: Icons.flight_takeoff_rounded,
          ),
          Gap(AppLayout.getHeight(15)),
          const AppIconText(
            text: 'Arrival',
            sideIcon: Icons.flight_land_rounded,
          ),
          Gap(AppLayout.getHeight(20)),
          /*
           find Tickets
          */
          Container(
            padding: EdgeInsets.symmetric(
              vertical: AppLayout.getHeight(17),
              horizontal: AppLayout.getWidth(12),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                AppLayout.getHeight(15),
              ),
              color: const Color(0xD91130CF),
            ),
            child: Center(
              child: Text(
                'Find Tickets',
                style: Styles.textStyle.copyWith(color: Colors.white),
              ),
            ),
          ),
          Gap(AppLayout.getHeight(35)),
          /*
           Upcoming Flights
          */
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Upcoming Flights',
                style: Styles.headLineStyles2,
              ),
              Text(
                'View all',
                style: Styles.textStyle.copyWith(
                  color: Styles.primaryColor,
                ),
              ),
            ],
          ),
          Gap(AppLayout.getHeight(20)),
          /*
           Images
          */
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: AppLayout.getHeight(395),
                width: size.width * 0.43,
                padding: EdgeInsets.symmetric(
                  vertical: AppLayout.getHeight(15),
                  horizontal: AppLayout.getWidth(15),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(20)),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade300,
                      blurRadius: 20,
                      spreadRadius: 5,
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: AppLayout.getHeight(200),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Styles.primaryColor,
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/sit.jpg'),
                        ),
                      ),
                    ),
                    Gap(AppLayout.getHeight(15)),
                    Text(
                      '20% dicount\non business\nclass\ntickets from\nAirline On\nInternational',
                      style: Styles.headLineStyles2
                          .copyWith(color: Colors.grey.shade500),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: size.width * 0.43,
                        height: AppLayout.getHeight(174),
                        padding: EdgeInsets.symmetric(
                          vertical: AppLayout.getHeight(15),
                          horizontal: AppLayout.getWidth(15),
                        ),
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(AppLayout.getHeight(20)),
                          color: const Color.fromARGB(255, 72, 179, 179),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.shade300,
                              blurRadius: 20,
                              spreadRadius: 5,
                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Discount\nfor survey',
                              style: Styles.headLineStyles2.copyWith(
                                color: Colors.white,
                              ),
                            ),
                            Gap(AppLayout.getHeight(10)),
                            Text(
                              'Take the survey\nabout our\nservices and\nget a discount',
                              style: Styles.headLineStyles3.copyWith(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        right: -45,
                        top: -40,
                        child: Container(
                          padding: EdgeInsets.all(AppLayout.getHeight(30)),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                                width: 18, color: const Color(0xFF189999)),
                            color: Colors.transparent,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Gap(AppLayout.getHeight(17)),
                  Container(
                    padding: EdgeInsets.all(AppLayout.getHeight(15)),
                    width: size.width * 0.43,
                    height: AppLayout.getHeight(190),
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(AppLayout.getHeight(20)),
                      color: const Color(0xFFEC6545),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Take Love',
                          style: Styles.headLineStyles2.copyWith(
                            color: Colors.white,
                          ),
                        ),
                        Gap(AppLayout.getHeight(21)),
                        RichText(
                          text: const TextSpan(
                            children: [
                              TextSpan(
                                  text: '😍', style: TextStyle(fontSize: 32)),
                              TextSpan(
                                  text: '🥰', style: TextStyle(fontSize: 40)),
                              TextSpan(
                                  text: '😘', style: TextStyle(fontSize: 32)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
