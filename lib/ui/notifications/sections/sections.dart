import 'package:essayguru/constants/const.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Widget singleNotificationWidget() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(radius: 18, backgroundColor: inactiveLinkTextColor),
        Flexible(
          child: Padding(
            padding: const EdgeInsets.only(left: 12.0, right: 15.0),
            child: Text(
              "Bid Accepted! Your contract bid of \$14.36 for order 7837191 - Watch all of the videos and answer two quesions has been accepted by the customer. Please start working ASAP!",
              style: TextStyle(color: textColor, fontSize: 11),
              strutStyle: StrutStyle(height: 1.5),
            ),
          ),
        ),
        Text(
          "Feb 7, 9:33 PM",
          style: TextStyle(color: textColor, fontSize: 11),
          strutStyle: StrutStyle(height: 1.5),
        ),
      ],
    ),
  );
}
