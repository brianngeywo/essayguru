import 'package:essayguru/constants/const.dart';
import 'package:essayguru/sections/sidebars.dart';
import 'package:essayguru/ui/order_details/order_details_page.dart';
import 'package:flutter/material.dart';

class MainOrderDetailsPage extends StatelessWidget {
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
