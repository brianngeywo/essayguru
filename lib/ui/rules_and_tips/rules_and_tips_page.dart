import 'package:essayguru/constants/const.dart';
import 'package:essayguru/ui/rules_and_tips/sections/sections.dart';
import 'package:flutter/material.dart';

class RulesAndTipsPage extends StatefulWidget {
  RulesAndTipsPage({Key? key}) : super(key: key);

  @override
  State<RulesAndTipsPage> createState() => _RulesAndTipsPageState();
}

class _RulesAndTipsPageState extends State<RulesAndTipsPage> with SingleTickerProviderStateMixin {
  List<bool> isExpanded = [];
  late TabController _controller;
  int _selectedindex = 0;
  List<Tab> tabs = [
    Tab(text: "terms and Conditions"),
    Tab(text: "Writing Guide"),
  ];
  @override
  void initState() {
    super.initState();
    isExpanded = [false, false, false, false, false, false, false, false, false, false];
    _controller = TabController(length: tabs.length, vsync: this);
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
        elevation: 0,
        backgroundColor: myPrimaryColor,
        automaticallyImplyLeading: false,
        title: Text(
          "Rules & Tips",
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: textColor,
          ),
        ),
      ),
      body: Scaffold(
        backgroundColor: myPrimaryColor,
        appBar: TabBar(
          tabs: tabs,
          controller: _controller,
          padding: const EdgeInsets.only(top: 10, bottom: 10),
          labelColor: const Color.fromARGB(255, 235, 235, 235),
        ),
        body: TabBarView(
          controller: _controller,
          children: [
            Container(
              color: mySecondaryColor.withOpacity(0.5),
              padding: const EdgeInsets.all(8.0),
              margin: const EdgeInsets.all(10),
              child: ListView(
                children: [
                  ExpansionPanelList(
                    animationDuration: Duration(milliseconds: 1000),
                    children: isExpanded.map((e) {
                      return singleRulesAndTipsExpansionPanel(context, e);
                    }).toList(),
                    expansionCallback: (i, status) => setState(() {
                      isExpanded[i] = !isExpanded[i];
                    }),
                  ),
                ],
              ),
            ),
            Text("fuck it am tired"),
          ],
        ),
      ),
    );
  }
}
