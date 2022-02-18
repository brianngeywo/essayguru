import 'package:essayguru/constants/const.dart';
import 'package:essayguru/ui/order_details/main.dart';
import 'package:flutter/material.dart';

class AvailableOrderPage extends StatelessWidget {
  AvailableOrderPage({Key? key}) : super(key: key);
  List<Tab> myTabs = <Tab>[
    Tab(text: "all".toUpperCase()),
    Tab(text: "invited".toUpperCase()),
    Tab(text: "HIDDEN".toUpperCase()),
  ];
  // controller object
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
      body: DefaultTabController(
        length: myTabs.length,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Scaffold(
            backgroundColor: myPrimaryColor,
            appBar: AppBar(
              backgroundColor: myPrimaryColor,
              elevation: 0,
              flexibleSpace: TabBar(
                padding: EdgeInsets.only(top: 10, bottom: 10),
                labelColor: Color.fromARGB(255, 235, 235, 235),
                tabs: myTabs,
              ),
            ),
            body: TabBarView(
              children: [
                ListView(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => const MainOrderDetailsPage()),
                        );
                      },
                      child: orderTileCard(),
                    ),
                    orderTileCard(),
                    orderTileCard(),
                    orderTileCard(),
                    orderTileCard(),
                    orderTileCard(),
                    orderTileCard(),
                    orderTileCard(),
                    orderTileCard(),
                    orderTileCard(),
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
      ),
    );
  }
}
