import 'package:essayguru/ui/order_details/main.dart';
import 'package:essayguru_ui_components/constants/const.dart';
import 'package:essayguru_ui_components/int_controller.dart';
import 'package:essayguru_ui_components/main_section_listings_layout_extension.dart';
import 'package:essayguru_ui_components/order_list_tile_card.dart';
import 'package:flutter/material.dart';

class MyOrdersSection extends StatefulWidget {
  @override
  State<MyOrdersSection> createState() => _MyOrdersSectionState();
}

class _MyOrdersSectionState extends State<MyOrdersSection>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return MainSectionListingsLayoutExtension.defaultLayout(
      context,
      title: "My Orders",
      items: [
        OrderListTileCard(
          onPressed: () => intController.updateValue(6),
        ),
        OrderListTileCard(
          onPressed: () => intController.updateValue(6),
        ),
      ],
    );
  }
}
