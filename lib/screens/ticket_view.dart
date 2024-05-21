import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:testing/utils/app_layout.dart';
import 'package:testing/utils/app_styles.dart';
import 'package:testing/widgets/column_layout.dart';
import 'package:testing/widgets/layout_builder_widget.dart';
import 'package:testing/widgets/thick_container.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool? isColor;
  const TicketView({super.key, required this.ticket, this.isColor});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width * 0.85,
      height: 179,
      // height: AppLayout.getHeight(200),
      child: Container(
        margin: const EdgeInsets.only(right: 16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            /*
            showing the blue part of card
            */
            Container(
              decoration: BoxDecoration(
                // color: Color(0xff526799),
                color: isColor == null ? const Color(0xff526799) : Colors.white,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(21),
                    topRight: Radius.circular(21)),
              ),
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        // "NYC",
                        ticket['from']['code'],
                        style: isColor == null
                            ? Styles.headLineStyle3
                                .copyWith(color: Colors.white)
                            : Styles.headLineStyle3,
                      ),
                      // const Spacer(),
                      Expanded(child: Container()),
                       ThickContainer(
                        isColor: isColor,
                      ), // that o icon in front and back of flight icon
                      // const Spacer(),
                      Expanded(
                        child: Stack(children: [
                         const SizedBox(
                            height: 24,
                            child: AppLayoutBuilderWidget(sections: 6)
                            // LayoutBuilder(
                            //   builder: (BuildContext context,
                            //       BoxConstraints constraints) {
                            //     // print("the width is ${constraints.constrainWidth()}");

                            //     return Flex(
                            //       direction: Axis.horizontal,
                            //       mainAxisAlignment:
                            //           MainAxisAlignment.spaceBetween,
                            //       mainAxisSize: MainAxisSize.max,
                            //       children: List.generate(
                            //         (constraints.constrainWidth() / 6).floor(),
                            //         (index) => SizedBox(
                            //           width: 3,
                            //           height: 1,
                            //           child: DecoratedBox(
                            //             decoration: BoxDecoration(
                            //                 color: isColor == null
                            //                     ? Colors.white
                            //                     : Colors.grey.shade300),
                            //           ),
                            //         ),
                            //       ),
                            //     );
                            //   },
                            // ),
                          ),
                          Center(
                            child: Transform.rotate(
                                angle: 1.5,
                                child: Icon(Icons.local_airport_rounded,
                                    color: isColor == null
                                        ? Colors.white
                                        : Color(0xff8accf7))),
                          ),
                        ]),
                      ),

                       ThickContainer(isColor: isColor),
                      // const Spacer(),
                      Expanded(child: Container()),

                      Text(
                        // "LDN",
                        ticket['to']['code'],
                        style: isColor == null
                            ? Styles.headLineStyle3
                                .copyWith(color: Colors.white)
                            : Styles.headLineStyle3,
                      ),
                    ],
                  ),
                  const Gap(3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 100,
                        child: Text(ticket['from']['name'],
                            style: isColor == null
                                ? Styles.headLineStyle4
                                    .copyWith(color: Colors.white)
                                : Styles.headLineStyle4),
                      ),
                      Text(
                        // '8H 30M',
                        ticket['flying_time'],
                        style: isColor == null
                            ? Styles.headLineStyle4
                                .copyWith(color: Colors.white)
                            : Styles.headLineStyle4,
                      ),
                      SizedBox(
                        width: 100,
                        child: Text(ticket['to']['name'],
                            textAlign: TextAlign.end,
                            style: isColor == null
                                ? Styles.headLineStyle4
                                    .copyWith(color: Colors.white)
                                : Styles.headLineStyle4),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            /*
          showing the orange card top with -------
          */
            Container(
              color: isColor == null ? Styles.orangeColor : Colors.white,
              child: Row(
                children: [
                  SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: isColor == null
                            ? Colors.grey.shade200
                            : Colors.white,
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: LayoutBuilder(
                        builder:
                            (BuildContext context, BoxConstraints constraints) {
                          return Flex(
                            direction: Axis.horizontal,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            children: List.generate(
                              (constraints.constrainWidth() / 15).floor(),
                              (index) => SizedBox(
                                width: 5,
                                height: 1,
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
                  const SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                          )),
                    ),
                  ),
                ],
              ),
            ),
            /*
          showing the orange card bottom
          */
            Container(
              decoration: BoxDecoration(
                color: isColor == null ? Styles.orangeColor : Colors.white,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(isColor == null ? 21 : 0),
                    bottomRight: Radius.circular(isColor == null ? 21 : 0)),
              ),
              padding: const EdgeInsets.only(
                  left: 16, top: 10, right: 16, bottom: 16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnLayout(
                        firstText: ticket['date'],
                        secondText: "Date",
                        alignment: CrossAxisAlignment.start,
                        isColor: isColor,
                      ),
                      // Column(
                      //   crossAxisAlignment: CrossAxisAlignment.start,
                      //   children: [
                      //     Text(
                      //       // "1 MAY",
                      //       ticket['date'],
                      //       style:isColor==null? Styles.headLineStyle3
                      //           .copyWith(color: Colors.white):Styles.headLineStyle3,
                      //     ),
                      //     const Gap(5),
                      //     Text(
                      //       "Date",
                      //       style:isColor==null?Styles.headLineStyle4
                      //           .copyWith(color: Colors.white):Styles.headLineStyle4,
                      //     ),
                      //   ],
                      // ),

                      AppColumnLayout(
                        firstText: ticket['departure_time'],
                        secondText: "Departure Time",
                        alignment: CrossAxisAlignment.center,
                        isColor: isColor,
                      ),
                      // Column(
                      //   crossAxisAlignment: CrossAxisAlignment.center,
                      //   children: [
                      //     Text(
                      //       // "08:00 AM",
                      //       ticket['departure_time'],
                      //       style: isColor==null?Styles.headLineStyle3
                      //           .copyWith(color: Colors.white):Styles.headLineStyle3,
                      //     ),
                      //     const Gap(5),
                      //     Text(
                      //       "Departure Time",
                      //       style:isColor==null? Styles.headLineStyle4
                      //           .copyWith(color: Colors.white):Styles.headLineStyle4,
                      //     ),
                      //   ],
                      // ),

                      AppColumnLayout(
                        firstText: ticket['number'].toString(),
                        secondText: "Number",
                        alignment: CrossAxisAlignment.end,
                        isColor: isColor,
                      ),
                      // Column(
                      //   crossAxisAlignment: CrossAxisAlignment.end,
                      //   children: [
                      //     Text(
                      //       // "23",
                      //       ticket['number'].toString(),
                      //       style:isColor==null? Styles.headLineStyle3
                      //           .copyWith(color: Colors.white):Styles.headLineStyle3,
                      //     ),
                      //     const Gap(5),
                      //     Text(
                      //       "Number",
                      //       style:isColor==null? Styles.headLineStyle4
                      //           .copyWith(color: Colors.white):Styles.headLineStyle4,
                      //     ),
                      //   ],
                      // ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
