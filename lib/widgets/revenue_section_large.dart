import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/style.dart';
import 'package:flutter_application_1/widgets/bar_chart.dart';
import 'package:flutter_application_1/widgets/custome_text.dart';
import 'package:flutter_application_1/widgets/revenue_info.dart';

class RevenueSectionLarge extends StatelessWidget {
  const RevenueSectionLarge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(24),
      margin: EdgeInsets.symmetric(vertical: 30),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 6),
                color: lightGrey.withOpacity(.1),
                blurRadius: 12)
          ],
          border: Border.all(color: lightGrey, width: 5)),
      child: Row(
        children: [
          Expanded(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomText(
                      text: "Revenue Chart",
                      size: 20,
                      color: lightGrey,
                      weight: FontWeight.bold),
                  Container(
                    width: 600,
                    height: 200,
                    child: SimpleBarChart.withSampleData(),
                  ),
                ]),
          ),
          Container(
            width: 1,
            height: 120,
            color: lightGrey,
          ),
          Expanded(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      RevenueInfo(title: "Today\'s revenue", amount: "23"),
                      RevenueInfo(title: "Last 7 days", amount: "150"),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  RevenueInfo(title: "Lasy 30 days", amount: "1203"),
                  RevenueInfo(title: "Last 12 months", amount: "3234"),
                ]),
          )
        ],
      ),
    );
  }
}
