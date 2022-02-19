import 'package:flutter/material.dart';
import 'package:essayguru/constants/const.dart';

class AvailableOrderPage extends StatefulWidget {
  const AvailableOrderPage({Key? key}) : super(key: key);

  @override
  State<AvailableOrderPage> createState() => _AvailableOrderPageState();
}

class _AvailableOrderPageState extends State<AvailableOrderPage> with SingleTickerProviderStateMixin {
  late TabController _controller;
  // ignore: unused_field
  int _selectedindex = 0;
  List<Tab> myTabs = <Tab>[
    Tab(text: "all".toUpperCase()),
    Tab(text: "invited".toUpperCase()),
    Tab(text: "HIDDEN".toUpperCase()),
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
        padding: const EdgeInsets.all(8.0),
        child: Scaffold(
          backgroundColor: myPrimaryColor,
          appBar: AppBar(
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
                  orderTileCard(),
                  orderTileCard(),
                  orderTileCard(),
                  orderTileCard(),
                  orderTileCard(),
                ],
              ),
              ListView(
                children: [
                  orderTileCard(),
                ],
              ),
              ListView(
                children: [
                  orderTileCard(),
                  orderTileCard(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
