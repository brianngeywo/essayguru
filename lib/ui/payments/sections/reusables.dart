import 'package:essayguru/constants/const.dart';
import 'package:flutter/material.dart';

ExpansionPanel accountTransactionsExpansionPanel(bool isExpanded) {
  return ExpansionPanel(
    headerBuilder: ((context, isExpanded) => Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              // width: MediaQuery.of(context).size.width / 4,
              padding: const EdgeInsets.all(8.0),
              margin: const EdgeInsets.only(left: 20.0),
              child: Text(
                "Feb 15, 08:18 AM",
                style: TextStyle(
                  color: textColor,
                  fontSize: 12,
                ),
              ),
            ),
            Container(
              // width: MediaQuery.of(context).size.width / 4,
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Payment completed for order 3072432",
                style: TextStyle(
                  color: textColor,
                  fontSize: 12,
                ),
              ),
            ),
            Container(
              // width: MediaQuery.of(context).size.width / 4,
              padding: const EdgeInsets.all(8.0),
              child: const Text(
                "	\$5.03",
                style: TextStyle(
                  color: Color.fromARGB(255, 4, 105, 7),
                  fontSize: 12,
                ),
              ),
            ),
            Container(
              // width: double.infinity / 4,
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "\$31.46",
                style: TextStyle(
                  color: textColor,
                  fontSize: 12,
                ),
              ),
            ),
          ],
        )),
    body: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        "body",
        textAlign: TextAlign.start,
        style: TextStyle(
          color: textColor,
          fontSize: 12,
        ),
      ),
    ),
    isExpanded: isExpanded,
    backgroundColor: mySecondaryColor,
    canTapOnHeader: true,
  );
}

Widget withdrawalRequestListTile() {
  return Container(
    padding: const EdgeInsets.all(10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "902393",
          style: TextStyle(
            color: textColor,
            fontSize: 11,
          ),
        ),
        Text(
          "Payoneer randomemail@gmail.com",
          style: TextStyle(
            color: textColor,
            fontSize: 11,
          ),
        ),
        Text(
          "Done",
          style: TextStyle(
            color: textColor,
            fontSize: 11,
          ),
        ),
        Text(
          "15 days ago",
          style: TextStyle(
            color: textColor,
            fontSize: 11,
          ),
        ),
      ],
    ),
  );
}
