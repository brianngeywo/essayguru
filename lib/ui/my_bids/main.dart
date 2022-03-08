import 'package:essayguru/constants/const.dart';
import 'package:essayguru/routes.dart';
import 'package:essayguru/sections/sidebars.dart';
import 'package:essayguru/ui/my_bids/sections/my_bids_section.dart';
import 'package:flutter/material.dart';

class MainBidsPage extends StatelessWidget {
  const MainBidsPage({
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
                child: const MyBidsSection(),
                padding: const EdgeInsets.all(15),
              ),
            ),
            chatSidebar(context),
          ],
        ),
      
    );
  }
}
