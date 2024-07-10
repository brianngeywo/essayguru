import 'package:essayguru/ui/homepage/homepage.dart';
import 'package:essayguru/ui/my_bids/main.dart';
import 'package:essayguru/ui/my_orders/main.dart';
import 'package:essayguru/ui/order_details/main.dart';
import 'package:essayguru_ui_components/notifications/main.dart';
import 'package:essayguru_ui_components/payments/main.dart';
import 'package:essayguru_ui_components/rules_and_tips/main.dart';
import 'package:flutter/material.dart';

class Routes {
  static Route generatedPageRoutes(RouteSettings settings) {
    return MaterialPageRoute<void>(
      settings: settings,
      builder: (BuildContext context) {
        switch (settings.name) {
          case HomePage.routeName:
            return const HomePage();

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
