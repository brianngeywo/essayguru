import 'package:essayguru/constants/const.dart';
import 'package:essayguru/routes.dart';
import 'package:essayguru/sections/sidebars.dart';
import 'package:essayguru/ui/my_orders/sections/my_orders.dart';
import 'package:flutter/material.dart';

class MainOrdersPage extends StatelessWidget {
  static const routeName = "/main_orders_page";

  const MainOrdersPage({
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
                child: const MyOrdersSection(),
                padding: const EdgeInsets.all(15),
              ),
            ),
            chatSidebar(context),
          ],
        ),
      
    );
  }
}
