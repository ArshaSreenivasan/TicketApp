import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:testing/utils/app_layout.dart';
import 'package:testing/utils/app_styles.dart';
import 'package:testing/widgets/double_text_widget.dart';
import 'package:testing/widgets/icon_text_widget.dart';

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
          FittedBox(
            child: Container(
              padding: const EdgeInsets.all(3.5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: const Color(0xfff4f6fd),
              ),
              child: Row(
                children: [
                  /*Airline Tickets*/
                  Container(
                    width: size.width * .44,
                    padding: const EdgeInsets.symmetric(vertical: 7),
                    decoration: const BoxDecoration(
                      borderRadius:
                          BorderRadius.horizontal(left: Radius.circular(50)),
                      color: Colors.white,
                    ),
                    child: const Center(
                      child: Text("Airline tickets"),
                    ),
                  ),

                  /*Hotels*/
                  Container(
                    width: size.width * .44,
                    padding: const EdgeInsets.symmetric(vertical: 7),
                    decoration: const BoxDecoration(
                      borderRadius:
                          BorderRadius.horizontal(right: Radius.circular(50)),
                      color: Colors.transparent,
                    ),
                    child: const Center(
                      child: Text("Hotels"),
                    ),
                  ),
                ],
              ),
            ),
          ),
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
            children: [
              Container(
                width: size.width * .42,
                height: 400,
                padding: const EdgeInsets.symmetric(horizontal:15, vertical: 15 ),
                decoration:  BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
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
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
