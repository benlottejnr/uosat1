import 'package:flutter/material.dart';
import 'package:uosat/base/widgets/app_layoutbuilder_widget.dart';
import 'package:uosat/base/widgets/big_circle.dart';
import 'package:uosat/base/widgets/big_dot.dart';
import 'package:uosat/base/widgets/text_style_fourth.dart';
import 'package:uosat/base/widgets/text_style_third.dart';
import 'package:uosat/styles/app_styles.dart';

class TicketView extends StatefulWidget {
  const TicketView({super.key});

  @override
  State<TicketView> createState() => _TicketViewState();
}

class _TicketViewState extends State<TicketView> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SizedBox(
      width: size.width * 0.85,
      height: 189,
      child: Container(
        margin: EdgeInsets.only(right: 16),
        child: Column(
          children: [
            //blue part of ticket
            Container(
              margin: EdgeInsets.only(right: 16),
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: AppStyles.ticketBlue,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(21),
                      topRight: Radius.circular(21))),
              child: Column(
                children: [
                  //line 1...show departure and destination with icons
                  Row(
                    children: [
                      TextStyleThird(
                        text: "NYC",
                      ),
                      Expanded(child: Container()),
                      const BigDot(),
                      Expanded(
                          child: Stack(
                        children: [
                          const SizedBox(
                            height: 24,
                            child: AppLayoutbuilderWidget(
                              randomDivider: 6,
                            ),
                          ),
                          Center(
                            child: Transform.rotate(
                                angle: 1.57,
                                child: const Icon(
                                  Icons.local_airport_rounded,
                                  color: Colors.white,
                                )),
                          )
                        ],
                      )),
                      const BigDot(),
                      Expanded(child: Container()),
                      TextStyleThird(
                        text: "LDN",
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  //line 2...show departure and destination names with time
                  Row(
                    children: [
                      SizedBox(
                        width: 100,
                        child: TextStyleFourth(
                          text: "New-York",
                        ),
                      ),
                      Expanded(child: Container()),
                      TextStyleFourth(
                        text: "8H 30M",
                      ),
                      Expanded(child: Container()),
                      SizedBox(
                        width: 100,
                        child: TextStyleFourth(
                          text: "London",
                          align: TextAlign.end,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            //semi circle in the middle row
            Container(
              color: AppStyles.ticketOrange,
              margin: EdgeInsets.only(right: 16),
              child: Row(
                children: [
                  BigCircle(
                    isRight: false,
                  ),
                  Expanded(
                      child: AppLayoutbuilderWidget(
                    randomDivider: 15,
                  )),
                  BigCircle(
                    isRight: true,
                  )
                ],
              ),
            ),
            //orange part of the ticket
            Container(
              margin: EdgeInsets.only(right: 16),
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: AppStyles.ticketOrange,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(21),
                      bottomRight: Radius.circular(21))),
              child: Column(
                children: [
                  //line 1...show departure and destination with icons
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextStyleThird(text: "1 MAY"),
                          SizedBox(height: 5),
                          TextStyleFourth(text: "Date"),
                        ],
                      ),
                      Column(
                        children: [
                          TextStyleThird(text: "08:00AM"),
                          SizedBox(height: 5),
                          TextStyleFourth(text: "Departure Time"),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          TextStyleThird(text: "23"),
                          SizedBox(height: 5),
                          TextStyleFourth(
                            text: "Number",
                            align: TextAlign.end,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
