import 'package:essayguru_ui_components/constants/const.dart';
import 'package:essayguru_ui_components/desktop_side_bar_button.dart';
import 'package:essayguru_ui_components/int_controller.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DesktopSidebar extends StatelessWidget {
  const DesktopSidebar({Key? key, required this.intController}) : super(key: key);
  final IntController intController;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: mySecondaryColor,
      width: 430,
      child: ListView(
        physics: const NeverScrollableScrollPhysics(),
        children: [
          const DesktopSidebarLogo(),
          const DesktopSideBarAccountStatus(),
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
