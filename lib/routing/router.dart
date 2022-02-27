import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/authentication/authentication.dart';
import 'package:flutter_application_1/pages/clients/clients.dart';
import 'package:flutter_application_1/pages/drivers/drivers.dart';
import 'package:flutter_application_1/pages/home.dart';
import 'package:flutter_application_1/pages/overview/overview.dart';
import 'dart:js';

import 'package:flutter_application_1/routing/routes.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case homePageRoute:
      return _getPageRoute(HomePage());
    case overviewPageRoute:
      return _getPageRoute(OverViewPage());
    case driversPageRoute:
      return _getPageRoute(DriversPage());
    case clientsPageRoute:
      return _getPageRoute(ClientsPage());
    case authenticationPageRoute:
      return _getPageRoute(AuthenticationPage());
    default:
      return _getPageRoute(OverViewPage());
  }
}

PageRoute _getPageRoute(Widget child) {
  return MaterialPageRoute(builder: (context) => child);
}
