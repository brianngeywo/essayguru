import 'package:essayguru/ui/order_details/main.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Color myPrimaryColor = Color.fromARGB(255, 1, 13, 39);
Color mySecondaryColor = Color.fromARGB(206, 26, 41, 70);
Color textColor = Color.fromARGB(255, 240, 240, 240);
Color greytextColor = Color.fromARGB(255, 94, 94, 94);
Color inactiveLinkTextColor = Color.fromARGB(255, 192, 192, 192);

Widget desktopsidebarButton(
    BuildContext context, String text, IconData awesomeIcons, String indicatorText, bool isNotification) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: TextButton.icon(
      onPressed: () {},
      icon: Icon(
        awesomeIcons,
        color: textColor,
        size: 12,
      ),
      label: Row(
        children: [
          Text(
            text.toUpperCase(),
            style: TextStyle(
              color: textColor,
              fontSize: 13,
              fontWeight: FontWeight.w300,
            ),
          ),
          Expanded(child: SizedBox()),
          !indicatorText.isEmpty
              ? Text(
                  indicatorText,
                  style: TextStyle(
                    fontSize: 13,
                    color: textColor,
                    fontWeight: FontWeight.w300,
                  ),
                )
              : isNotification
                  ? Container(
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromARGB(255, 76, 0, 255),
                      ),
                      child: Text(
                        "",
                        style: TextStyle(fontSize: 7),
                      ),
                    )
                  : Container(
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: mySecondaryColor.withOpacity(0),
                      ),
                      child: Text(
                        "",
                        style: TextStyle(fontSize: 7),
                      ),
                    ),
        ],
      ),
    ),
  );
}

IconButton mobilesidebarButton(IconData icon) {
  return IconButton(
    onPressed: () {},
    icon: Icon(
      icon,
      color: textColor,
      size: 14,
    ),
  );
}

Widget orderTileCard() {
  return Padding(
    padding: const EdgeInsets.only(bottom: 5.0),
    child: ListTile(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      tileColor: mySecondaryColor,
      title: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 4.0),
            child: Text(
              "order title",
              style: TextStyle(
                color: textColor,
                fontWeight: FontWeight.w400,
                fontSize: 15,
              ),
            ),
          ),
          Expanded(child: Text("")),
          Padding(
            padding: const EdgeInsets.only(bottom: 4.0),
            child: Text(
              "\$12",
              style: TextStyle(
                color: textColor,
                fontWeight: FontWeight.w400,
                fontSize: 15,
              ),
            ),
          ),
        ],
      ),
      subtitle: Row(
        children: [
          Text(
            "7686786",
            style: TextStyle(
              color: inactiveLinkTextColor,
              fontWeight: FontWeight.w300,
              fontSize: 10,
            ),
          ),
          SizedBox(width: 7),
          Text(
            "1 pages",
            style: TextStyle(
              color: inactiveLinkTextColor,
              fontWeight: FontWeight.w300,
              fontSize: 10,
            ),
          ),
          SizedBox(width: 7),
          Text(
            "Research paper",
            style: TextStyle(
              color: inactiveLinkTextColor,
              fontWeight: FontWeight.w300,
              fontSize: 10,
            ),
          ),
          Expanded(
            child: Text(""),
          ),
          Text(
            "7 days remain ",
            style: TextStyle(
              color: inactiveLinkTextColor,
              fontWeight: FontWeight.w300,
              fontSize: 10,
            ),
          ),
        ],
      ),
      trailing: Icon(
        FontAwesomeIcons.ellipsisV,
        color: textColor,
        size: 15,
      ),
    ),
  );
}

Widget chatTileCard() {
  return Column(
    children: [
      ListTile(
          contentPadding: EdgeInsets.all(7),
          // minVerticalPadding: 7,
          title: Row(
            children: [
              Text(
                "788917 Discussion",
                style: TextStyle(fontSize: 13),
              ),
              Expanded(child: SizedBox()),
              Text(
                "14 hours ago",
                style: TextStyle(fontSize: 13, color: greytextColor),
              ),
            ],
          ),
          subtitle: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "You: lorem ipsum dolor sit amet lorem  lorem ipsum dolor sit amet lorem  lorem ipsum dolor",
              style: TextStyle(fontSize: 13),
            ),
          ),
          trailing: Icon(
            FontAwesomeIcons.chevronRight,
          )),
      Divider(color: myPrimaryColor.withOpacity(0.2)),
    ],
  );
}
