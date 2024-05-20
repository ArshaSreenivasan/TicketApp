import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:testing/utils/app_layout.dart';
import 'package:testing/utils/app_styles.dart';
import 'package:testing/widgets/double_text_widget.dart';
import 'package:testing/widgets/icon_text_widget.dart';
import 'package:testing/widgets/ticket_tabs.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          const Gap(40),
          Text(
            "what are \n you looking for?",
            style: Styles.headLineStyle.copyWith(fontSize: 35),
          ),
          const Gap(20),
          const AppTicketsTabs(firstTab: "Airline tickets",secondTab: "Hotels",),
          const Gap(25),
          const AppIconText(
              icon: Icons.flight_takeoff_rounded, text: 'Departure'),
          const Gap(25),
          const AppIconText(icon: Icons.flight_land_rounded, text: 'Arrival'),
          const Gap(25),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0xD91130CE),
            ),
            child: Row(
              children: [
                Center(
                  child: Text(
                    "Find Tickets",
                    style: Styles.textStyle.copyWith(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
          const Gap(40),
          const AppDoubleTextWidget(
              bigText: "Upcoming Flights", smallText: "View all"),
          const Gap(25),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: size.width * .42,
                height: 430,
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade200,
                          blurRadius: 1,
                          spreadRadius: 1)
                    ]),
                child: Column(
                  children: [
                    Container(
                      height: 190,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/photo.jpeg"),
                        ),
                      ),
                    ),
                    const Gap(15),
                    const Text(
                      "20% discount on the early booking of this flight, Don't miss out the chance",
                      style: Styles.headLineStyle2,
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Stack(
                    //used to get that circle in the upside of the green table
                    children: [
                      Container(
                        width: size.width * .44,
                        height: 210,
                        decoration: BoxDecoration(
                          color: const Color(0xff3ab8b8),
                          borderRadius: BorderRadius.circular(18),
                        ),
                        padding: const EdgeInsets.symmetric(
                            vertical: 15, horizontal: 15),
                        child: Column(
                          children: [
                            Text(
                              "Discount\n for survey",
                              style: Styles.headLineStyle2.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            const Gap(10),
                            Text(
                              "Take the survey about our services and get discount",
                              style: Styles.headLineStyle2.copyWith(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                  fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        right: -45,
                        top: -40,
                        child: Container(
                          padding: const EdgeInsets.all(30),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border:
                                Border.all(width: 18, color: Color(0xff189999)),
                            color: Colors.transparent,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Gap(15),
                  Container(
                    width: size.width * .44,
                    height: 210,
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: const Color(0xffec6545),
                    ),
                    child: Column(
                      children: [
                        Text(
                          "Take Love",
                          style: Styles.headLineStyle2.copyWith(
                              color: Colors.white, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        const Gap(5),
                        RichText(
                            text: const TextSpan(children: [
                          TextSpan(
                              text: '😊',
                              style: TextStyle(fontSize: 35)),
                          TextSpan(
                              text: '😎',
                              style: TextStyle(fontSize: 48)),
                          TextSpan(
                              text: '🤪',
                              style: TextStyle(fontSize: 35)),
                        ])),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
