import 'package:essayguru/constants/const.dart';
import 'package:essayguru/ui/homepage/homepage.dart';
import 'package:essayguru/ui/homepage/sections/available_orders_section.dart';
import 'package:essayguru/ui/order_details/main.dart';
import 'package:flutter/material.dart';

class Routes {
  static Route generatedPageRoutes(RouteSettings settings) {
    // implement business logic here
    switch (settings.name) {
      case home:
        return MaterialPageRoute(builder: (_) => const HomePage());
      case myOrders:
        return MaterialPageRoute(builder: (_) => const AvailableOrderPage());
      case mainOrderDetailsPage:
        return MaterialPageRoute(builder: (_) => const MainOrderDetailsPage());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(body: Center(child: Text('No route defined for ${settings.name}'))));
    }
  }
}
