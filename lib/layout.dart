import 'package:flutter/material.dart';
import 'package:flutter_application_1/helpers/responsiveness.dart';
import 'package:flutter_application_1/routing/routes.dart';
import 'package:flutter_application_1/widgets/large_screen.dart';
import 'package:flutter_application_1/widgets/medium_screen.dart';
import 'package:flutter_application_1/widgets/side_menu.dart';
import 'package:flutter_application_1/widgets/side_menu_item.dart';
import 'package:flutter_application_1/widgets/small_screen.dart';
import 'package:flutter_application_1/widgets/top_nav.dart';

import 'package:get/get.dart';

class SiteLayout extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: topNavigationBar(context, scaffoldKey),
      drawer: Drawer(),
      body: ResponsiveWidget(
        largeScreen: LargeScreen(),
        smallScreen: SmallScreen(),
        mediumScreen: MediumScreen(),
      ),
    );
  }
}
