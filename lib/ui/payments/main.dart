import 'package:essayguru/constants/const.dart';
import 'package:essayguru/ui/homepage/sections/available_orders_section.dart';
import 'package:essayguru/sections/sidebars.dart';
import 'package:essayguru/ui/payments/payments_page.dart';
import 'package:flutter/material.dart';

class MainPaymentsPage extends StatelessWidget {
  static const routeName = "/payments";

  const MainPaymentsPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myPrimaryColor,
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          sidebar(context),
          Expanded(
            child: Container(
              color: myPrimaryColor,
              child: const PaymentsPage(),
              padding: const EdgeInsets.all(15),
            ),
          ),
          chatSidebar(context),
        ],
      ),
    );
  }
}
