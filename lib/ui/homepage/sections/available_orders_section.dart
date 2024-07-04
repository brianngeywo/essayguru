import 'package:essayguru/widgets/main.dart';
import 'package:flutter/material.dart';
import 'package:essayguru/constants/const.dart';

class AvailableOrderPage extends StatefulWidget {
  const AvailableOrderPage({Key? key}) : super(key: key);

  @override
  State<AvailableOrderPage> createState() => _AvailableOrderPageState();
}

class _AvailableOrderPageState extends State<AvailableOrderPage>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myPrimaryColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: myPrimaryColor,
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.only(top: 20, bottom: 15),
          child: Text(
            "Available Orders",
            style: TextStyle(
              color: textColor,
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Scaffold(
          floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
          floatingActionButton: FloatingActionButton.extended(
            onPressed: () {},
            backgroundColor: Colors.green.shade900,
            label: Text(
              "Get help",
              style: TextStyle(
                color: textColor,
                fontSize: 11,
              ),
            ),
          ),
          backgroundColor: myPrimaryColor,
          appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: myPrimaryColor,
            elevation: 0,
          ),
          body: ListView(
            children: [
              orderTileCard(context),
              orderTileCard(context),
            ],
          ),
        ),
      ),
    );
  }
}
