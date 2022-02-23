import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/authentication/authentication.dart';
import 'package:flutter_application_1/pages/clients/clients.dart';
import 'package:flutter_application_1/pages/drivers/drivers.dart';
import 'package:flutter_application_1/pages/overview/overview.dart';
import 'dart:js';

import 'package:flutter_application_1/routing/routes.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case OverViewPageRoute:
      return _getPageRoute(OverViewPage());
    case DriversPageRoute:
      return _getPageRoute(DriversPage());
    case ClientsPageRoute:
      return _getPageRoute(ClientsPage());
    case AuthenticationPageRoute:
      return _getPageRoute(AuthenticationPage());
    default:
      return _getPageRoute(OverViewPage());
  }
}

PageRoute _getPageRoute(Widget child) {
  return MaterialPageRoute(builder: (context) => child);
}
