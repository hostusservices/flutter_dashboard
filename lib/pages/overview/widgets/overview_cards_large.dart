import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/overview/widgets/info_card.dart';

class OverviewCardsLargeScreen extends StatelessWidget {
  const OverviewCardsLargeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Row(
      children: [
        InfoCard(
            title: "Rides in progress",
            value: "7",
            topColor: Colors.orange,
            isActive: true,
            onTap: () {}),
        SizedBox(
          width: _width / 64,
        ),
        InfoCard(
            title: "Packages delivered",
            value: "17",
            topColor: Colors.lightGreen,
            isActive: true,
            onTap: () {}),
        SizedBox(
          width: _width / 64,
        ),
        InfoCard(
            title: "Cancelled delivery",
            value: "3",
            topColor: Colors.redAccent,
            isActive: true,
            onTap: () {}),
        SizedBox(
          width: _width / 64,
        ),
        SizedBox(
          width: _width / 64,
        ),
        InfoCard(
            title: "Scheduled deliveries",
            value: "3",
            topColor: Colors.purpleAccent,
            isActive: true,
            onTap: () {}),
      ],
    );
  }
}
