import 'package:essayguru_ui_components/constants/const.dart';
import 'package:essayguru/ui/notifications/sections/sections.dart';
import 'package:flutter/material.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myPrimaryColor,
      appBar: AppBar(
        backgroundColor: myPrimaryColor,
        automaticallyImplyLeading: false,
        title: Text(
          "Notifications",
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: textColor,
          ),
        ),
      ),
      body: Container(
        color: mySecondaryColor,
        padding: const EdgeInsets.all(8.0),
        margin: const EdgeInsets.all(10),
        child: Column(
          children: [
            singleNotificationWidget(),
            Divider(color: dividerColor),
            singleNotificationWidget(),
            Divider(color: dividerColor),
            singleNotificationWidget(),
            Divider(color: dividerColor),
            singleNotificationWidget(),
            Divider(color: dividerColor),
          ],
        ),
      ),
    );
  }
}
