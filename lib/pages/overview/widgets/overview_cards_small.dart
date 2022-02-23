import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/overview/widgets/infor_card_small.dart';

import 'info_card.dart';

class OverViewCardSmallSCreen extends StatelessWidget {
  const OverViewCardSmallSCreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Container(
      height: 400,
      child: Column(
        children: [
          InfoCardSmall(
              title: "Rides in progress",
              value: "7",
              topColor: Colors.orange,
              isActive: true,
              onTap: () {}),
          SizedBox(
            width: _width / 64,
          ),
          InfoCardSmall(
              title: "Packages delivered",
              value: "17",
              topColor: Colors.lightGreen,
              isActive: true,
              onTap: () {}),
          InfoCardSmall(
              title: "Cancelled delivery",
              value: "3",
              topColor: Colors.redAccent,
              isActive: true,
              onTap: () {}),
          SizedBox(
            width: _width / 64,
          ),
          InfoCardSmall(
              title: "Scheduled deliveries",
              value: "3",
              topColor: Colors.purpleAccent,
              isActive: true,
              onTap: () {}),
        ],
      ),
    );
  }
}
