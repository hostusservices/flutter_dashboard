import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/controllers.dart';
import 'package:flutter_application_1/routing/routes.dart';

import '../routing/router.dart';

Navigator localNavigator() => Navigator(
      key: navigationController.navigationKey,
      initialRoute: OverViewPageRoute,
      onGenerateRoute: generateRoute,
    );
