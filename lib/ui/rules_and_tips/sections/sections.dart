import 'package:essayguru/constants/const.dart';
import 'package:flutter/material.dart';

ExpansionPanel singleRulesAndTipsExpansionPanel(BuildContext context, bool isOpen) {
  return ExpansionPanel(
    backgroundColor: mySecondaryColor,
    headerBuilder: (context, isOpenr) {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          "1. Writers duties",
          style: TextStyle(
            fontSize: 10,
            color: textColor,
          ),
        ),
      );
    },
    body: Flexible(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          "The Company hereby engages the Writer to create business-related Content for the Company in the form of written materials. The Writer must complete all tasks delegated by the Company before the scheduled deadline.",
          style: TextStyle(
            fontSize: 10,
            color: textColor,
          ),
          overflow: TextOverflow.fade,
        ),
      ),
    ),
    isExpanded: isOpen,
    canTapOnHeader: true,
  );
}
