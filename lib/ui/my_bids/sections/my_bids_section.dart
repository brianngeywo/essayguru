import 'package:essayguru/ui/order_details/main.dart';
import 'package:essayguru_ui_components/constants/const.dart';
import 'package:essayguru_ui_components/int_controller.dart';
import 'package:essayguru_ui_components/main_section_listings_layout_extension.dart';
import 'package:essayguru_ui_components/order_list_tile_card.dart';
import 'package:flutter/material.dart';

class MyBidsSection extends StatefulWidget {
  @override
  State<MyBidsSection> createState() => _MyBidsSectionState();
}

class _MyBidsSectionState extends State<MyBidsSection>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return MainSectionListingsLayoutExtension.defaultLayout(
      context,
      title: "My Bids",
      items: [
        OrderListTileCard(
          onPressed: () => intController.updateValue(6),
        ),
      ],
    );
  }
}
