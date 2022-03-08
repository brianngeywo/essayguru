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
    // implement business logic here
    switch (settings.name) {
      case home:
        return MaterialPageRoute(builder: (_) => const HomePage());
      case myOrders:
        return MaterialPageRoute(builder: (_) => const MainOrdersPage());
      case myBids:
        return MaterialPageRoute(builder: (_) => const MainBidsPage());
      case mainOrderDetailsPage:
        return MaterialPageRoute(builder: (_) => const MainOrderDetailsPage());
      case notificationsPage:
        return MaterialPageRoute(builder: (_) => const MainNotificationsPage());
      case rulesAndTipsPage:
        return MaterialPageRoute(builder: (_) => const MainRulesAndTipsPage());
              case accountPaymentAndTransactionsPage:
        return MaterialPageRoute(builder: (_) => const MainPaymentsPage());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(body: Center(child: Text('No route defined for ${settings.name}'))));
    }
  }
}
