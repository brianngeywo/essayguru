import 'package:essayguru/constants/const.dart';
import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

import '../int_controller.dart';

class DesktopSideBarButton extends StatelessWidget {
  final String text;
  final IconData awesomeIcons;
  final String indicatorText;
  final bool isNotification;
  final int page;
  final IntController intController;
  const DesktopSideBarButton({
    Key? key,
    required this.text,
    required this.awesomeIcons,
    required this.indicatorText,
    required this.isNotification,
    required this.page,
    required this.intController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextButton.icon(
        onPressed: () => intController.updateValue(page),
        icon: Icon(awesomeIcons, color: textColor, size: 12),
        label: Row(
          children: [
            Text(
              text.toUpperCase(),
              style: TextStyle(
                color: textColor,
                fontSize: 13,
                fontWeight: FontWeight.w300,
              ),
            ),
            const Expanded(child: SizedBox()),
            indicatorText.isNotEmpty
                ? Text(
                    indicatorText,
                    style: TextStyle(
                      fontSize: 13,
                      color: textColor,
                      fontWeight: FontWeight.w300,
                    ),
                  )
                : isNotification
                    ? Container(
                        padding: const EdgeInsets.all(4),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color.fromARGB(255, 76, 0, 255),
                        ),
                        child: const Text(
                          "",
                          style: TextStyle(fontSize: 7),
                        ),
                      )
                    : Container(
                        padding: const EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: mySecondaryColor.withOpacity(0),
                        ),
                        child: const Text(
                          "",
                          style: TextStyle(fontSize: 7),
                        ),
                      ),
          ],
        ),
      ),
    );
  }
}
