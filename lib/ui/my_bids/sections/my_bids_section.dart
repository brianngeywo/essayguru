import 'package:essayguru/widgets/main.dart';
import 'package:flutter/material.dart';
import 'package:essayguru/constants/const.dart';

class MyBidsSection extends StatefulWidget {
  const MyBidsSection({Key? key}) : super(key: key);

  @override
  State<MyBidsSection> createState() => _MyBidsSectionState();
}

class _MyBidsSectionState extends State<MyBidsSection>
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
            "My Bids",
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
          backgroundColor: myPrimaryColor,
          appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: myPrimaryColor,
            elevation: 0,
          ),
          body: ListView(
            children: [
              orderTileCard(context),
              // orderTileCard(context),
            ],
          ),
        ),
      ),
    );
  }
}
