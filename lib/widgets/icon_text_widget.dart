import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:testing/utils/app_styles.dart';

class AppIconText extends StatelessWidget {
  final IconData icon;
  final String text;
  const AppIconText({super.key, required this.icon,required this.text});

  @override
  Widget build(BuildContext context) {
    return  Container(
          padding: const EdgeInsets.symmetric(vertical: 12,horizontal: 12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          child:  Row(
            children: [
              Icon(
                // Icons.flight_takeoff_rounded,
                icon,
                color:const Color(0xffbfc2df),
              ),
               const Gap(10),
              Text(text, style: Styles.textStyle,)
            ],

          ),
        );
  }
} 