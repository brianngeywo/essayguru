import 'package:essayguru/constants/const.dart';
import 'package:essayguru/ui/homepage/sections/available_orders_section.dart';
import 'package:essayguru/sections/sidebars.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static const routeName = "/homepage";
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HomePageLayoutExtension.defaultLayout(context: context);
  }
}

extension HomePageLayoutExtension on Widget {
  static Widget defaultLayout({required BuildContext context}) {
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
              child: const AvailableOrderPage(),
              padding: const EdgeInsets.all(15),
            ),
          ),
          chatSidebar(context),
        ],
      ),
    );
  }
}
