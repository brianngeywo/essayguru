import 'package:essayguru/constants/const.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Widget bidOrderSection() {
  return Card(
    color: mySecondaryColor,
    child: Column(
      children: [
        ListTile(
          leading: Text(
            "My bid \$48.00",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: textColor,
              fontSize: 18,
            ),
          ),
          trailing: Icon(
            FontAwesomeIcons.ellipsisV,
            color: inactiveLinkTextColor,
            size: 20,
          ),
        ),
        Text(
          "My share \$24.00 (50%)",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: textColor,
            fontSize: 16,
          ),
        ),
        Text(
          "25 open bids",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: textColor,
            fontSize: 16,
          ),
        ),
        ListTile(
          leading: MaterialButton(
            color: Colors.green,
            onPressed: () {},
            child: Text(
              "PLACE BID",
              style: TextStyle(
                color: textColor,
                fontWeight: FontWeight.w200,
                fontSize: 14,
              ),
            ),
          ),
          trailing: MaterialButton(
              onPressed: () {},
              color: Colors.transparent,
              child: Text(
                "HIDE ORDER",
                style: TextStyle(
                  color: textColor,
                  fontWeight: FontWeight.w200,
                  fontSize: 12,
                ),
              )),
        ),
      ],
    ),
  );
}

Card orderReportCard() {
  return Card(
    color: mySecondaryColor,
  );
}
