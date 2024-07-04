import 'package:essayguru/constants/const.dart';
import 'package:essayguru/sections/sidebars.dart';
import 'package:essayguru/ui/rules_and_tips/rules_and_tips_page.dart';
import 'package:flutter/material.dart';

class MainRulesAndTipsPage extends StatelessWidget {
  static const routeName = "/rules_and_tips";

  const MainRulesAndTipsPage({
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
              child:  RulesAndTipsPage(),
              padding: const EdgeInsets.all(15),
            ),
          ),
          chatSidebar(context),
        ],
      ),
    );
  }
}
