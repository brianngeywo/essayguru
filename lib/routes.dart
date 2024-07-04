import 'package:essayguru/constants/const.dart';
import 'package:essayguru/ui/homepage/homepage.dart';
import 'package:essayguru/ui/my_bids/main.dart';
import 'package:essayguru/ui/my_orders/main.dart';
import 'package:essayguru/ui/notifications/main.dart';
import 'package:essayguru/ui/order_details/main.dart';
import 'package:essayguru/ui/payments/main.dart';
import 'package:essayguru/ui/rules_and_tips/main.dart';
import 'package:flutter/material.dart';

class Routes {
  static Route generatedPageRoutes(RouteSettings settings) {
    return MaterialPageRoute<void>(
      settings: settings,
      builder: (BuildContext context) {
        switch (settings.name) {
          case HomePage.routeName:
            return const HomePage();
          case MainOrdersPage.routeName:
            return const MainOrdersPage();
          case MainBidsPage.routeName:
            return const MainBidsPage();
          case MainOrderDetailsPage.routeName:
            return const MainOrderDetailsPage();
          case MainNotificationsPage.routeName:
            return const MainNotificationsPage();
          case MainRulesAndTipsPage.routeName:
            return const MainRulesAndTipsPage();
          case MainPaymentsPage.routeName:
            return const MainPaymentsPage();
          default:
            return Scaffold(
                body: Center(
                    child: Text('No route defined for ${settings.name}')));
        }
      },
    );
    // implement business logic here
  }
}
