import 'package:essayguru_ui_components/constants/const.dart';
import 'package:essayguru/sections/desktop_sidebar.dart';
import 'package:essayguru/sections/sidebars.dart';
import 'package:essayguru/ui/homepage/sections/available_orders_section.dart';
import 'package:essayguru/ui/my_bids/sections/my_bids_section.dart';
import 'package:essayguru/ui/my_orders/sections/my_orders.dart';
import 'package:essayguru/ui/notifications/notifications_page.dart';
import 'package:essayguru/ui/order_details/order_details_page.dart';
import 'package:essayguru/ui/payments/payments_page.dart';
import 'package:essayguru/ui/rules_and_tips/rules_and_tips_page.dart';
import 'package:essayguru_ui_components/int_controller.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static const routeName = "/homepage";
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final IntController _intController = IntController();

  @override
  void dispose() {
    _intController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return HomePageLayoutExtension.defaultLayout(
      context: context,
      intController: _intController,
      mainPages: [
        const AvailableOrderPage(),
        const MyOrdersSection(),
        const MyBidsSection(),
        const OrderDetailsPage(),
        const NotificationsPage(),
        RulesAndTipsPage(),
        const PaymentsPage(),
      ],
    );
  }
}

extension HomePageLayoutExtension on Widget {
  static Widget defaultLayout({
    required BuildContext context,
    required IntController intController,
    required List<Widget> mainPages,
  }) {
    return Scaffold(
      backgroundColor: myPrimaryColor,
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DesktopSidebar(intController: intController),
          Expanded(
            child: ValueListenableBuilder<int>(
              valueListenable: intController.valueNotifier,
              builder: (context, value, child) {
                return Container(
                  color: myPrimaryColor,
                  padding: const EdgeInsets.all(15),
                  child: IndexedStack(
                    index: value,
                    children: mainPages,
                  ),
                );
              },
            ),
          ),
          chatSidebar(context),
        ],
      ),
    );
  }
}
