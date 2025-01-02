import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uosat/screens/all_tickets.dart';
import 'package:uosat/styles/app_styles.dart';

class AppDoubleText extends StatelessWidget {
  final String bigText;
  final String smallText;
  final VoidCallback func;

  const AppDoubleText(
      {super.key,
      required this.bigText,
      required this.smallText,
      required this.func});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(bigText, style: AppStyles.headLineStyle2),
        InkWell(
          onTap: () => Navigator.pushNamed(context, "/all_tickets"),
          child: Text(smallText,
              style:
                  AppStyles.textStyle.copyWith(color: AppStyles.primaryColor)),
        )
      ],
    );
  }
}
