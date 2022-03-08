import 'package:essayguru/constants/const.dart';
import 'package:essayguru/ui/payments/sections/reusables.dart';
import 'package:flutter/material.dart';

class AccountTransactionsList extends StatefulWidget {
  const AccountTransactionsList({Key? key}) : super(key: key);

  @override
  _AccountTransactionsListState createState() => _AccountTransactionsListState();
}

class _AccountTransactionsListState extends State<AccountTransactionsList> {
  List<bool> isOpen = [];
  @override
  void initState() {
    super.initState();
    isOpen = [true, false, false, false, false, false, false, false, false, false, false, false];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      margin: const EdgeInsets.all(8.0),
      child: ListView(
        children: [
          // Flexible(
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.start,
          //     crossAxisAlignment: CrossAxisAlignment.start,
          //     children: [
          //       Container(
          //         width: MediaQuery.of(context).size.width / 4,
          //         padding: const EdgeInsets.all(8.0),
          //         child: Text(
          //           "Date",
          //           style: TextStyle(
          //             color: textColor,
          //             fontSize: 12,
          //           ),
          //         ),
          //       ),
          //       Container(
          //         width: MediaQuery.of(context).size.width / 4,
          //         padding: const EdgeInsets.all(8.0),
          //         child: Text(
          //           "Type",
          //           style: TextStyle(
          //             color: textColor,
          //             fontSize: 12,
          //           ),
          //         ),
          //       ),
          //       Container(
          //         padding: const EdgeInsets.all(8.0),
          //         width: MediaQuery.of(context).size.width / 4,
          //         child: Text(
          //           "Amount",
          //           style: TextStyle(
          //             color: textColor,
          //             fontSize: 12,
          //           ),
          //         ),
          //       ),
          //       Container(
          //         padding: const EdgeInsets.all(8.0),
          //         margin: const EdgeInsets.only(right: 25.0),
          //         width: MediaQuery.of(context).size.width / 4,
          //         child: Text(
          //           "Balance",
          //           style: TextStyle(
          //             color: textColor,
          //             fontSize: 12,
          //           ),
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
          Expanded(
            child: ExpansionPanelList(
              children: isOpen.map((isPanelOpen) => accountTransactionsExpansionPanel(isPanelOpen)).toList(),
              expansionCallback: (i, expanded) {
                setState(() {
                  isOpen[i] = !isOpen[i];
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}

Widget withdrawalRequestList() {
  return Container(
    padding: const EdgeInsets.all(8.0),
    margin: const EdgeInsets.all(8.0),
    color: mySecondaryColor,
    child: ListView(
      children: [
        withdrawalRequestListTile(),
        Divider(color: dividerColor),
        withdrawalRequestListTile(),
        Divider(color: dividerColor),
        withdrawalRequestListTile(),
        Divider(color: dividerColor),
        withdrawalRequestListTile(),
        Divider(color: dividerColor),
        withdrawalRequestListTile(),
        Divider(color: dividerColor),
      ],
    ),
  );
}
