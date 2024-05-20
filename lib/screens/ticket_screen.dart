import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:gap/gap.dart';
import 'package:testing/screens/ticket_view.dart';
import 'package:testing/utils/app_info_list.dart';
import 'package:testing/utils/app_layout.dart';
import 'package:testing/utils/app_styles.dart';
import 'package:testing/widgets/column_layout.dart';
import 'package:testing/widgets/layout_builder_widget.dart';
import 'package:testing/widgets/ticket_tabs.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(children: [
        ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          children: [
            const Gap(40),
            const Text(
              "Tickets",
              style: Styles.headLineStyle,
            ),
            const Gap(20),
            const AppTicketsTabs(firstTab: "Upcoming", secondTab: "Previous"),
            const Gap(20),
            Container(
              padding: const EdgeInsets.only(left: 15),
              child: TicketView(
                ticket: ticketList[0],
                isColor: true,
              ),
            ),
            const SizedBox(height: 1),
            Container(
              color: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 20),
              margin: const EdgeInsets.symmetric(horizontal: 15),
              child: const Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnLayout(
                        firstText: 'Flutter DB',
                        secondText: 'Passenger',
                        alignment: CrossAxisAlignment.start,
                        isColor: false,
                      ),
                      AppColumnLayout(
                        firstText: '5221 364869',
                        secondText: 'Passport',
                        alignment: CrossAxisAlignment.end,
                        isColor: false,
                      ),
                      // Column(
                      //   children:[
                      //     Text('Flutter DB', style: Styles.headLineStyle3),
                      //     Gap(5),
                      //     Text('Passenger', style: Styles.headLineStyle3),
                      //   ],
                      // ),
                    ],
                  ),
                Gap(20),
                 AppLayoutBuilderWidget(sections: 15,isColor: false, width: 5,),
                ],
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
