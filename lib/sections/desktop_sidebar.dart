import 'package:essayguru/constants/const.dart';
import 'package:essayguru/ui/homepage/homepage.dart';
import 'package:essayguru/ui/my_bids/main.dart';
import 'package:essayguru/ui/notifications/main.dart';
import 'package:essayguru/ui/payments/main.dart';
import 'package:essayguru/ui/rules_and_tips/main.dart';
import 'package:essayguru/widgets/main.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DesktopSidebar extends StatelessWidget {
  const DesktopSidebar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: mySecondaryColor,
      width: 430,
      child: ListView(
        physics: const NeverScrollableScrollPhysics(),
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            width: double.infinity,
            color: myPrimaryColor,
            child: Text(
              "EssayGURU",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: textColor,
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
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
                margin: const EdgeInsets.all(5.0),
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
          desktopsidebarButton(context, "JEFF S.", FontAwesomeIcons.userAlt, "",
              false, HomePage.routeName),
          desktopsidebarButton(
              context,
              "balance",
              FontAwesomeIcons.moneyBillWaveAlt,
              "\$792.05",
              false,
              MainPaymentsPage.routeName),
          desktopsidebarButton(context, "notifications", FontAwesomeIcons.bell,
              "", true, MainNotificationsPage.routeName),
          Divider(color: textColor.withOpacity(0.3)),
          desktopsidebarButton(context, "available orders",
              FontAwesomeIcons.clipboardList, "", false, HomePage.routeName),
          desktopsidebarButton(context, "my bids", FontAwesomeIcons.userCheck,
              "", true, MainBidsPage.routeName),
          desktopsidebarButton(
              context,
              "my orders",
              FontAwesomeIcons.clipboardCheck,
              "",
              false,
              MainBidsPage.routeName),
          Divider(color: textColor.withOpacity(0.3)),
          desktopsidebarButton(context, "chats", FontAwesomeIcons.commentDots,
              "", false, HomePage.routeName),
          desktopsidebarButton(
              context,
              "help center",
              FontAwesomeIcons.comments,
              "",
              false,
              MainRulesAndTipsPage.routeName),
          desktopsidebarButton(
              context,
              "rules & tips",
              FontAwesomeIcons.infoCircle,
              "",
              false,
              MainRulesAndTipsPage.routeName),
          Divider(color: textColor.withOpacity(0.3)),
        ],
      ),
    );
  }
}
