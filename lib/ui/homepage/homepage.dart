import 'package:essayguru_ui_components/constants/const.dart';
import 'package:essayguru/sections/desktop_sidebar.dart';
import 'package:essayguru/ui/homepage/sections/available_orders_section.dart';
import 'package:essayguru/ui/my_bids/sections/my_bids_section.dart';
import 'package:essayguru/ui/my_orders/sections/my_orders.dart';
import 'package:essayguru/ui/order_details/order_details_page.dart';
import 'package:essayguru_ui_components/home_page_layout_extension.dart';
import 'package:essayguru_ui_components/int_controller.dart';
import 'package:essayguru_ui_components/notifications/notifications_page.dart';
import 'package:essayguru_ui_components/payments/payments_page.dart';
import 'package:essayguru_ui_components/rules_and_tips/rules_and_tips_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static const routeName = "/homepage";
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void dispose() {
    intController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    // TODO: implement initState
    intController.updateValue(0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return HomePageLayoutExtension.defaultLayout(
      desktopSideBar: DesktopSidebar(),
      context: context,
      mainPages: [
        AvailableOrderPage(),
        MyOrdersSection(),
        MyBidsSection(),
        const NotificationsPage(),
        const RulesAndTipsPage(),
        const PaymentsPage(),
        const OrderDetailsPage(),
      ],
    );
  }
}
