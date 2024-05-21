import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:testing/screens/ticket_view.dart';
import 'package:testing/utils/app_info_list.dart';
import 'package:testing/utils/app_layout.dart';
import 'package:testing/utils/app_styles.dart';
import 'package:testing/widgets/column_layout.dart';
import 'package:testing/widgets/layout_builder_widget.dart';
import 'package:testing/widgets/ticket_tabs.dart';
import 'package:barcode_widget/barcode_widget.dart';

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
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              margin: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: [
                  const Row(
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
                  const Gap(20),
                  const AppLayoutBuilderWidget(
                    sections: 15,
                    isColor: false,
                    width: 5,
                  ),

                  //second row after flutter db
                  const Gap(20),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnLayout(
                        firstText: '135789 564435',
                        secondText: 'Number of E-ticket',
                        alignment: CrossAxisAlignment.start,
                        isColor: false,
                      ),
                      AppColumnLayout(
                        firstText: 'B2SG28',
                        secondText: 'Booking Code',
                        alignment: CrossAxisAlignment.end,
                        isColor: false,
                      ),
                    ],
                  ),
                  //dotted lines in ticket screen
                  const Gap(20),
                  const AppLayoutBuilderWidget(
                    sections: 15,
                    isColor: false,
                    width: 5,
                  ),
                  const Gap(20),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                "assets/visa.png",
                                scale: 11,
                              ),
                              const Text(
                                " *** 2462",
                                style: Styles.headLineStyle3,
                              )
                            ],
                          ),
                          const Gap(5),
                          const Text(
                            "Payment method",
                            style: Styles.headLineStyle4,
                          )
                        ],
                      ),
                      const AppColumnLayout(
                        firstText: '\$249.99',
                        secondText: 'Price',
                        alignment: CrossAxisAlignment.end,
                        isColor: false,
                      ),
                    ],
                  )
                ],
              ),
            ),
            //barcode of ticket page
            const SizedBox(height: 1),
            Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(21),
                  bottomLeft: Radius.circular(21),
                ),
              ),
              margin: const EdgeInsets.only(left: 15, right: 15),
              padding: const EdgeInsets.only(top: 20, bottom: 15),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: BarcodeWidget(
                    barcode: Barcode.code128(),
                    data: 'Hello Flutter',
                    drawText: false,
                    color: Styles.textColor,
                    width: double.infinity,
                    height: 70,
                  ),
                ),
              ),
            ),
            const Gap(20),
            Container(
              padding: const EdgeInsets.only(left: 15),
              child: TicketView(
                ticket: ticketList[0],
              ),
            ),
          ],
        ),
        //two circles in ticket screen left and right
        Positioned(
          left: 22,
          top:295,
          child: Container(
            padding:const EdgeInsets.all(3),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Styles.textColor,width: 2)
            ),
            child:const CircleAvatar(
              maxRadius: 4,
              backgroundColor: Styles.textColor,
            )
          ),
        ), 

        Positioned(
          right: 22,
          top: 295,
          child: Container(
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Styles.textColor, width: 2)),
              child: CircleAvatar(
                maxRadius: 4,
                backgroundColor: Styles.textColor,
              )),
        ),

      ]),
    );
  }
}
