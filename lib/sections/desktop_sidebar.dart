import 'package:essayguru/constants/const.dart';
import 'package:essayguru/ui/homepage/homepage.dart';
import 'package:essayguru/ui/my_bids/main.dart';
import 'package:essayguru/ui/notifications/main.dart';
import 'package:essayguru/ui/payments/main.dart';
import 'package:essayguru/ui/rules_and_tips/main.dart';
import 'package:essayguru/widgets/desktop_side_bar_button.dart';
import 'package:essayguru/widgets/main.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../int_controller.dart';

class DesktopSidebar extends StatelessWidget {
  DesktopSidebar({Key? key, required this.intController})
      : super(key: key);
  final IntController intController;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: mySecondaryColor,
      width: 430,
      child: ListView(
        physics: NeverScrollableScrollPhysics(),
        children: [
          Container(
            padding: EdgeInsets.all(10),
            width: double.infinity,
            color: myPrimaryColor,
            child: Text(
              "EssayGURU",
              textAlign: TextAlign.start,
              style: TextStyle(
                color: textColor,
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            width: double.infinity,
            color: myPrimaryColor,
            child: ListTile(
              leading: Text(
                "Account status",
                style: TextStyle(
                  color: textColor,
                  fontWeight: FontWeight.w200,
                  fontSize: 12,
                ),
              ),
              trailing: Container(
                margin: EdgeInsets.all(5.0),
                child: MaterialButton(
                    onPressed: () {},
                    color: Colors.green,
                    child: Text(
                      "Active",
                      style: TextStyle(
                        color: textColor,
                        fontWeight: FontWeight.w200,
                        fontSize: 12,
                      ),
                    )),
              ),
            ),
          ),
         DesktopSideBarButton(
            text: "JEFF S.",
            awesomeIcons: FontAwesomeIcons.userAlt,
            indicatorText: "",
            isNotification: false,
            page: 0,
            intController: intController, // AvailableOrderPage
          ),
          DesktopSideBarButton(
            text: "balance",
            awesomeIcons: FontAwesomeIcons.moneyBillWaveAlt,
            indicatorText: "\$792.05",
            isNotification: false,
            page: 6, // MainPaymentsPage
             intController: intController,
          ),
          DesktopSideBarButton(
            text: "notifications",
            awesomeIcons: FontAwesomeIcons.bell,
            indicatorText: "",
            isNotification: true,
            page: 4, // MainNotificationsPage
             intController: intController,
          ),
          Divider(color: textColor.withOpacity(0.3)),
          DesktopSideBarButton(
            text: "available orders",
            awesomeIcons: FontAwesomeIcons.clipboardList,
            indicatorText: "",
            isNotification: false,
            page: 0, // AvailableOrderPage
             intController: intController,
          ),
          DesktopSideBarButton(
            text: "my bids",
            awesomeIcons: FontAwesomeIcons.userCheck,
            indicatorText: "",
            isNotification: true,
            page: 2, // MainBidsPage
             intController: intController,
          ),
          DesktopSideBarButton(
            text: "my orders",
            awesomeIcons: FontAwesomeIcons.clipboardCheck,
            indicatorText: "",
            isNotification: false,
            page: 1, // MainOrdersPage
             intController: intController,
          ),
          Divider(color: textColor.withOpacity(0.3)),
          DesktopSideBarButton(
            text: "chats",
            awesomeIcons: FontAwesomeIcons.commentDots,
            indicatorText: "",
            isNotification: false,
            page: 0, // AvailableOrderPage (assuming no dedicated chat page)
             intController: intController,
          ),
          DesktopSideBarButton(
            text: "help center",
            awesomeIcons: FontAwesomeIcons.comments,
            indicatorText: "",
            isNotification: false,
            page: 5, // MainRulesAndTipsPage
             intController: intController,
          ),
          DesktopSideBarButton(
            text: "rules & tips",
            awesomeIcons: FontAwesomeIcons.infoCircle,
            indicatorText: "",
            isNotification: false,
            page: 5, // MainRulesAndTipsPage
             intController: intController,
          ),
          Divider(color: textColor.withOpacity(0.3)),
        ],
      ),
    );
  }
}
