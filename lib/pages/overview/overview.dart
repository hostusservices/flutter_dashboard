import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/controllers.dart';
import 'package:flutter_application_1/helpers/responsiveness.dart';
import 'package:flutter_application_1/pages/overview/widgets/overview_cards_large.dart';
import 'package:flutter_application_1/pages/overview/widgets/overview_cards_medium.dart';
import 'package:flutter_application_1/pages/overview/widgets/overview_cards_small.dart';
import 'package:flutter_application_1/widgets/custome_text.dart';
import 'package:flutter_application_1/widgets/revenue_section_large.dart';
import 'package:flutter_application_1/widgets/revenue_section_small.dart';
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
              if (ResponsiveWidget.isLargeScreen(context) ||
                  ResponsiveWidget.isMediumScreen(context))
                if (ResponsiveWidget.isCustomSize(context))
                  OverviewCardMediumScreen()
                else
                  OverviewCardsLargeScreen()
              else
                OverViewCardSmallSCreen(),
              if (!ResponsiveWidget.isSmallScreen(context))
                RevenueSectionLarge()
              else
                RevenueSectionSmall()
            ],
          ),
        )
      ],
    );
  }
}
