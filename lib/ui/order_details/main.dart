import 'package:essayguru_ui_components/constants/const.dart';
import 'package:essayguru/sections/sidebars.dart';
import 'package:essayguru/ui/order_details/order_details_page.dart';
import 'package:flutter/material.dart';

class MainOrderDetailsPage extends StatelessWidget {
  static const routeName = "/main_order_details_page";

  const MainOrderDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myPrimaryColor,
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          sidebar(context),
          const Expanded(
            child: OrderDetailsPage(),
          ),
          chatSidebar(context),
        ],
      ),
    );
  }
}
