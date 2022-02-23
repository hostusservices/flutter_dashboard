import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/controllers.dart';
import 'package:flutter_application_1/helpers/responsiveness.dart';
import 'package:flutter_application_1/widgets/custome_text.dart';
import 'package:get/get.dart';

class ClientsPage extends StatelessWidget {
  const ClientsPage({Key? key}) : super(key: key);

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
