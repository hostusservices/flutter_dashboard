import 'package:flutter/material.dart';
import 'package:flutter_application_1/helpers/responsiveness.dart';
import 'package:flutter_application_1/routing/routes.dart';
import 'package:flutter_application_1/widgets/large_screen.dart';
import 'package:flutter_application_1/widgets/medium_screen.dart';
import 'package:flutter_application_1/widgets/side_menu.dart';
import 'package:flutter_application_1/widgets/side_menu_item.dart';
import 'package:flutter_application_1/widgets/small_screen.dart';
import 'package:flutter_application_1/widgets/top_nav.dart';
import 'helpers/local_naviagator.dart';
import 'helpers/responsiveness.dart';

import 'package:get/get.dart';

class SiteLayout extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      extendBodyBehindAppBar: true,
      appBar: topNavigationBar(context, scaffoldKey),
      drawer: Drawer(
        child: SideMenu(),
      ),
      body: ResponsiveWidget(
        largeScreen: LargeScreen(),
        smallScreen: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: localNavigator(),
        ),
        mediumScreen: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: localNavigator(),
        ),
        customScreen: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: localNavigator(),
        ),
      ),
    );
  }
}
