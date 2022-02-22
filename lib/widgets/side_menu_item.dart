import 'package:flutter/material.dart';
import 'package:flutter_application_1/helpers/responsiveness.dart';
import 'package:flutter_application_1/widgets/horizontal_menu_item.dart';
import 'package:flutter_application_1/widgets/vertical_menu.dart';

class SideMenuItem extends StatelessWidget {
  final String itemName;
  final VoidCallback onTap;
  const SideMenuItem({
    Key? key,
    required this.itemName,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (ResponsiveWidget.isMediumScreen(context))
      return VerticalMenuItem(itemName: itemName, onTap: onTap);

    return HorizontalMenuItem(itemName: itemName, onTap: onTap);
  }
}
