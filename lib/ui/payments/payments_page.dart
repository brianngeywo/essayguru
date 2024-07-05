import 'package:essayguru_ui_components/constants/const.dart';
import 'package:essayguru/ui/payments/sections/sections.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PaymentsPage extends StatefulWidget {
  const PaymentsPage({Key? key}) : super(key: key);

  @override
  State<PaymentsPage> createState() => _PaymentsPageState();
}

class _PaymentsPageState extends State<PaymentsPage>
    with SingleTickerProviderStateMixin {
  List<Tab> paymentsTabs = [
    Tab(
      child: Text(
        "Transactions".toUpperCase(),
        style: TextStyle(
          fontSize: 12,
          color: textColor,
        ),
      ),
    ),
    Tab(
      child: Text(
        "Withdrawal Requests".toUpperCase(),
        style: TextStyle(
          fontSize: 12,
          color: textColor,
        ),
      ),
    ),
    Tab(
      child: Text(
        "payment methods".toUpperCase(),
        style: TextStyle(
          fontSize: 12,
          color: textColor,
        ),
      ),
    ),
  ];
  late TabController _paymentsTabController;
  @override
  void initState() {
    super.initState();
    _paymentsTabController =
        TabController(length: paymentsTabs.length, vsync: this);
    _paymentsTabController.addListener(() {
      setState(() {
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myPrimaryColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: myPrimaryColor,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "My balance: \$31.46",
              style: TextStyle(
                fontSize: 28,
                color: textColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextButton.icon(
              style: TextButton.styleFrom(backgroundColor: Colors.green),
              onPressed: () {},
              label: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Withdraw",
                  style: TextStyle(
                    fontSize: 11,
                    color: textColor,
                  ),
                ),
              ),
              icon: Icon(
                FontAwesomeIcons.moneyBillWaveAlt,
                color: textColor,
              ),
            ),
          ],
        ),
      ),
      body: Scaffold(
        backgroundColor: myPrimaryColor,
        appBar: TabBar(
          tabs: paymentsTabs,
          controller: _paymentsTabController,
          labelColor: textColor,
          padding: const EdgeInsets.only(top: 10, bottom: 10),
        ),
        body: TabBarView(
          controller: _paymentsTabController,
          children: [
            const AccountTransactionsList(),
            withdrawalRequestList(),
            const AccountTransactionsList(),
          ],
        ),
      ),
    );
  }
}
