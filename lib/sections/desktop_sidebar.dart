import 'package:essayguru_ui_components/constants/const.dart';
import 'package:essayguru_ui_components/desktop_side_bar_button.dart';
import 'package:essayguru_ui_components/desktop_sidebar_default_layout.dart';
import 'package:essayguru_ui_components/int_controller.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DesktopSidebar extends StatelessWidget {
  const DesktopSidebar({Key? key, required this.intController})
      : super(key: key);
  final IntController intController;
  @override
  Widget build(BuildContext context) {
    return DesktopSidebarDefaultLayout.defaultLayout(
      items: [
        DesktopSideBarButton(
          text: "JEFF S.",
          awesomeIcons: FontAwesomeIcons.userAlt,
          indicatorText: "",
          isNotification: false,
          onPressed: () => intController.updateValue(0),
        ),
        DesktopSideBarButton(
          text: "balance",
          awesomeIcons: FontAwesomeIcons.moneyBillWaveAlt,
          indicatorText: "\$792.05",
          isNotification: false,
          onPressed: () => intController.updateValue(6),
        ),
        DesktopSideBarButton(
          text: "notifications",
          awesomeIcons: FontAwesomeIcons.bell,
          indicatorText: "",
          isNotification: true,
          onPressed: () => intController.updateValue(4),
        ),
        Divider(color: textColor.withOpacity(0.3)),
        DesktopSideBarButton(
          text: "available orders",
          awesomeIcons: FontAwesomeIcons.clipboardList,
          indicatorText: "",
          isNotification: false,
          onPressed: () => intController.updateValue(0),
        ),
        DesktopSideBarButton(
          text: "my bids",
          awesomeIcons: FontAwesomeIcons.userCheck,
          indicatorText: "",
          isNotification: true,
          onPressed: () => intController.updateValue(2),
        ),
        DesktopSideBarButton(
          text: "my orders",
          awesomeIcons: FontAwesomeIcons.clipboardCheck,
          indicatorText: "",
          isNotification: false,
          onPressed: () => intController.updateValue(1),
        ),
        Divider(color: textColor.withOpacity(0.3)),
        DesktopSideBarButton(
          text: "chats",
          awesomeIcons: FontAwesomeIcons.commentDots,
          indicatorText: "",
          isNotification: false,
          onPressed: () => intController.updateValue(0),
        ),
        DesktopSideBarButton(
          text: "help center",
          awesomeIcons: FontAwesomeIcons.comments,
          indicatorText: "",
          isNotification: false,
          onPressed: () => intController.updateValue(5),
        ),
        DesktopSideBarButton(
          text: "rules & tips",
          awesomeIcons: FontAwesomeIcons.infoCircle,
          indicatorText: "",
          isNotification: false,
          onPressed: () => intController.updateValue(5),
        ),
      ],
    );
  }
}
