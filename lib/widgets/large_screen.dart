import 'package:flutter/material.dart';
import 'package:flutter_application_1/helpers/local_naviagator.dart';

import 'side_menu.dart';

class LargeScreen extends StatelessWidget {
  const LargeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: SideMenu()),
        Expanded(
            flex: 5,
            child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: localNavigator()))
      ],
    );
  }
}
