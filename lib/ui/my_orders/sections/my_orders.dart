import 'package:essayguru/widgets/main.dart';
import 'package:flutter/material.dart';
import 'package:essayguru/constants/const.dart';

class MyOrdersSection extends StatefulWidget {
  const MyOrdersSection({Key? key}) : super(key: key);

  @override
  State<MyOrdersSection> createState() => _MyOrdersSectionState();
}

class _MyOrdersSectionState extends State<MyOrdersSection> with SingleTickerProviderStateMixin {
  late TabController _controller;
  // ignore: unused_field
  int _selectedindex = 0;
  List<Tab> myTabs = <Tab>[
    Tab(text: "in progress".toUpperCase()),
    Tab(text: "completed".toUpperCase()),
    Tab(text: "canceled".toUpperCase()),
  ];

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: myTabs.length, vsync: this);
    _controller.addListener(() {
      setState(() {
        _selectedindex = _controller.index;
      });
    });
  }

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
            "My Orders",
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
            flexibleSpace: TabBar(
              controller: _controller,
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              labelColor: const Color.fromARGB(255, 235, 235, 235),
              tabs: myTabs,
            ),
          ),
          body: TabBarView(
            controller: _controller,
            children: [
              ListView(
                children: [
                  orderTileCard(context),
                  orderTileCard(context),
                ],
              ),
              ListView(
                children: [
                  orderTileCard(context),
                ],
              ),
              ListView(
                children: [
                  orderTileCard(context),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
