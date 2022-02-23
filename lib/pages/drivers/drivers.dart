import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/custome_text.dart';
import 'package:get/get.dart';

import '../../constants/controllers.dart';
import '../../helpers/responsiveness.dart';

class DriversPage extends StatelessWidget {
  const DriversPage({Key? key}) : super(key: key);

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
            ))
      ],
    );
  }
}
