import 'package:essayguru/ui/order_details/main.dart';
import 'package:essayguru_ui_components/constants/const.dart';
import 'package:essayguru_ui_components/int_controller.dart';
import 'package:essayguru_ui_components/main_section_listings_layout_extension.dart';
import 'package:essayguru_ui_components/order_list_tile_card.dart';
import 'package:flutter/material.dart';

class AvailableOrderPage extends StatefulWidget {
  @override
  State<AvailableOrderPage> createState() => _AvailableOrderPageState();
}

class _AvailableOrderPageState extends State<AvailableOrderPage>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return MainSectionListingsLayoutExtension.defaultLayout(
      context,
      title: "Available Orders",
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
