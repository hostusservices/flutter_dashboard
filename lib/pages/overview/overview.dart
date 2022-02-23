import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/controllers.dart';
import 'package:flutter_application_1/controllers/menu_controller.dart';
import 'package:flutter_application_1/helpers/responsiveness.dart';
import 'package:flutter_application_1/pages/overview/widgets/overview_cards_large.dart';
import 'package:flutter_application_1/widgets/custome_text.dart';
import 'package:get/get.dart';

class OverViewPage extends StatelessWidget {
  const OverViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(() => Row(
              children: [
                Container(
                    margin: EdgeInsets.only(
                        top: ResponsiveWidget.isSmallScreen(context) ? 56 : 6),
                    child: CustomText(
                      color: Colors.black,
                      size: 24,
                      text: menuController.activeItem.value,
                      weight: FontWeight.bold,
                    )),
              ],
            )),
        Expanded(
          child: ListView(
            children: [
              OverviewCardsLargeScreen(),
            ],
          ),
        )
      ],
    );
  }
}
