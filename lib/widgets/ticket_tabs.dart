import 'package:flutter/material.dart';
import 'package:testing/utils/app_layout.dart';

class AppTicketsTabs extends StatelessWidget {
  final String firstTab;
  final String secondTab;
  const AppTicketsTabs({super.key, required this.firstTab, required this.secondTab});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return FittedBox(
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
              child:  Center(
                child: Text(firstTab),
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
              child:  Center(
                child: Text(secondTab),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
