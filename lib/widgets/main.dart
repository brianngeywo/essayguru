import 'package:essayguru/ui/order_details/main.dart';
import 'package:essayguru_ui_components/constants/const.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Widget desktopsidebarButton(
    BuildContext context,
    String text,
    IconData awesomeIcons,
    String indicatorText,
    bool isNotification,
    String pathToLink) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: TextButton.icon(
      onPressed: () => Navigator.restorablePushNamed(context, pathToLink),
      icon: Icon(awesomeIcons, color: textColor, size: 12),
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
          const Expanded(child: SizedBox()),
          indicatorText.isNotEmpty
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
                      padding: const EdgeInsets.all(4),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromARGB(255, 76, 0, 255),
                      ),
                      child: const Text(
                        "",
                        style: TextStyle(fontSize: 7),
                      ),
                    )
                  : Container(
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: mySecondaryColor.withOpacity(0),
                      ),
                      child: const Text(
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

Widget chatTileCard() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "788917 Discussion",
              style: TextStyle(fontSize: 11),
            ),
            const Expanded(child: SizedBox()),
            Text(
              "14 hours ago",
              style: TextStyle(fontSize: 11, color: greytextColor),
            ),
          ],
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Flexible(
              child: Padding(
                padding: EdgeInsets.all(4.0),
                child: Text(
                  "You: lorem ipsum dolor sit amet lorem  lorem ipsum dolor sit amet lorem  lorem ipsum dolor lorem ipsum dolor sit amet lorem  lorem ipsum dolor sit amet lorem  lorem ipsum dolor lorem ipsum dolor sit amet lorem  lorem ipsum dolor sit amet lorem  lorem ipsum dolor",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 12),
                  strutStyle: StrutStyle(height: 1.2),
                ),
              ),
            ),
            Icon(
              Icons.arrow_right_sharp,
            ),
          ],
        ),
        Divider(color: myPrimaryColor.withOpacity(0.2)),
      ],
    ),
  );
}
