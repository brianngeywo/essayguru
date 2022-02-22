import 'package:essayguru/constants/const.dart';
import 'package:essayguru/ui/order_details/sections/reusables.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_framework/responsive_framework.dart';

Widget bidOrderSection() {
  return Expanded(
    child: Container(
      margin: const EdgeInsets.only(left: 10, right: 5, top: 5, bottom: 10),
      color: mySecondaryColor,
      padding: const EdgeInsets.all(10),
      // constraints: const BoxConstraints(maxHeight: 200),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Price \$48.00",
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                  color: textColor,
                  fontSize: 15,
                ),
              ),
              Icon(
                FontAwesomeIcons.ellipsisV,
                color: inactiveLinkTextColor,
                size: 15,
              ),
            ],
          ),
          Text(
            "My share \$24.00 (50%)",
            style: TextStyle(
              fontWeight: FontWeight.w300,
              color: inactiveLinkTextColor,
              fontSize: 13,
            ),
          ),
          Text(
            "25 open bids",
            style: TextStyle(
              fontWeight: FontWeight.w300,
              color: inactiveLinkTextColor,
              fontSize: 13,
            ),
          ),
          const Expanded(
            child: SizedBox(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MaterialButton(
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
              MaterialButton(
                onPressed: () {},
                color: Colors.transparent,
                child: Text(
                  "HIDE ORDER",
                  style: TextStyle(
                    color: textColor,
                    fontWeight: FontWeight.w200,
                    fontSize: 13,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

Widget customerSummaryCard(BuildContext context) {
  return Expanded(
    child: Container(
      margin: const EdgeInsets.only(left: 5, right: 10, top: 5, bottom: 10),
      color: mySecondaryColor,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(8),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: CircleAvatar(
                      radius: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP) ? 15 : 20,
                      backgroundColor: Colors.grey,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "526551",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: textColor,
                            fontSize: 10,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          "English US",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey.shade700,
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 10),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "100%",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: textColor,
                          fontSize: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP) ? 10 : 12,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        "Acceptance rate",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.w200,
                          color: Colors.grey.shade500,
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        "89%",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: textColor,
                          fontSize: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP) ? 10 : 12,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        "Pay rate",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.w200,
                          color: Colors.grey.shade500,
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        "180",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: textColor,
                          fontSize: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP) ? 10 : 12,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        "Orders",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.w200,
                          color: Colors.grey.shade500,
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "3:39 AM",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: textColor,
                          fontSize: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP) ? 10 : 12,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        "Customer local time",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.w200,
                          color: Colors.grey.shade500,
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

Widget chatWithClientCard(BuildContext context) {
  return Flexible(
    child: Container(
      margin: const EdgeInsets.only(left: 10, right: 10),
      height: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP) ? 35 : 55,
      color: mySecondaryColor,
      child: Center(
        child: Text(
          "Chat is not available at the moment",
          style: TextStyle(
            fontWeight: FontWeight.w100,
            color: inactiveLinkTextColor,
            fontSize: 10,
          ),
        ),
      ),
    ),
  );
}

Widget orderSummaryCard() {
  return Container(
    color: mySecondaryColor,
    padding: const EdgeInsets.all(10.0),
    margin: const EdgeInsets.only(left: 10.0, right: 10.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    orderSummaryCardSubjectAndTopicsRow(),
                    const Divider(color: Colors.grey),
                    orderSummaryCardSubjectAndTopicsRow(),
                    const Divider(color: Colors.grey),
                    orderSummaryCardSubjectAndTopicsRow(),
                    const Divider(color: Colors.grey),
                    orderSummaryCardSubjectAndTopicsRow(),
                    const Divider(color: Colors.grey),
                    orderSummaryCardSubjectAndTopicsRow(),
                    const Divider(color: Colors.grey),
                  ],
                ),
              ),
            ),
            // const SizedBox(width: 20, height: double.infinity),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  // physics: const NeverScrollableScrollPhysics(),
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    orderSummaryCardSubjectAndTopicsRow(),
                    const Divider(color: Colors.grey),
                    orderSummaryCardSubjectAndTopicsRow(),
                    const Divider(color: Colors.grey),
                    orderSummaryCardSubjectAndTopicsRow(),
                    const Divider(color: Colors.grey),
                    orderSummaryCardSubjectAndTopicsRow(),
                    const Divider(color: Colors.grey),
                    orderSummaryCardSubjectAndTopicsRow(),
                    const Divider(color: Colors.grey),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
