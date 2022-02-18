import 'package:essayguru/constants/const.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_framework/responsive_framework.dart';

Widget sidebar(BuildContext context) {
  return ResponsiveWrapper.of(context).isSmallerThan(TABLET)
      ? Padding(
          padding: const EdgeInsets.all(12.0),
          child: IconButton(
            onPressed: () {},
            icon: Icon(
              FontAwesomeIcons.bars,
              size: 20,
              color: textColor,
            ),
          ),
        )
      : Container(
          color: mySecondaryColor,
          width: ResponsiveWrapper.of(context).isTablet ? 50 : 230,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ResponsiveWrapper.of(context).isDesktop
                  ? Container(
                      padding: EdgeInsets.all(10),
                      width: double.infinity,
                      color: myPrimaryColor,
                      child: Text(
                        "EssayGURU",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: textColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ),
                      ),
                    )
                  : ResponsiveWrapper.of(context).isTablet
                      ? Container(
                          padding: EdgeInsets.all(10),
                          width: double.infinity,
                          color: ResponsiveWrapper.of(context).isTablet ? mySecondaryColor : myPrimaryColor,
                          child: Text(
                            "EG",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: textColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        )
                      : SizedBox(),
              ResponsiveWrapper.of(context).isTablet
                  ? Divider(
                      color: myPrimaryColor,
                    )
                  : Container(
                      padding: EdgeInsets.all(10),
                      width: double.infinity,
                      color: myPrimaryColor,
                      child: ListTile(
                        leading: Text(
                          "Account status",
                          style: TextStyle(
                            color: textColor,
                            fontWeight: FontWeight.w200,
                            fontSize: 12,
                          ),
                        ),
                        trailing: Container(
                          margin: const EdgeInsets.all(5.0),
                          child: MaterialButton(
                              onPressed: () {},
                              color: Colors.green,
                              child: Text(
                                "Active",
                                style: TextStyle(
                                  color: textColor,
                                  fontWeight: FontWeight.w200,
                                  fontSize: 12,
                                ),
                              )),
                        ),
                      ),
                    ),
              ResponsiveRowColumn(
                rowMainAxisAlignment: MainAxisAlignment.start,
                rowCrossAxisAlignment: CrossAxisAlignment.start,
                columnMainAxisAlignment: MainAxisAlignment.start,
                columnCrossAxisAlignment: CrossAxisAlignment.start,
                layout: ResponsiveRowColumnType.COLUMN,
                children: [
                  ResponsiveRowColumnItem(
                    child: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP)
                        ? mobilesidebarButton(FontAwesomeIcons.user)
                        : desktopsidebarButton(context, "JEFF S.", FontAwesomeIcons.userAlt, "", false),
                  ),
                  ResponsiveRowColumnItem(
                    child: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP)
                        ? mobilesidebarButton(FontAwesomeIcons.moneyBillWaveAlt)
                        : desktopsidebarButton(
                            context, "balance", FontAwesomeIcons.moneyBillWaveAlt, "\$792.05", false),
                  ),
                  ResponsiveRowColumnItem(
                    child: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP)
                        ? mobilesidebarButton(FontAwesomeIcons.bell)
                        : desktopsidebarButton(context, "notifications", FontAwesomeIcons.bell, "", true),
                  ),
                  ResponsiveRowColumnItem(child: Divider(color: textColor.withOpacity(0.3))),
                  ResponsiveRowColumnItem(
                    child: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP)
                        ? mobilesidebarButton(FontAwesomeIcons.clipboardList)
                        : desktopsidebarButton(context, "available orders", FontAwesomeIcons.clipboardList, "", false),
                  ),
                  ResponsiveRowColumnItem(
                    child: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP)
                        ? mobilesidebarButton(FontAwesomeIcons.userCheck)
                        : desktopsidebarButton(context, "my bids", FontAwesomeIcons.userCheck, "", true),
                  ),
                  ResponsiveRowColumnItem(
                    child: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP)
                        ? mobilesidebarButton(FontAwesomeIcons.clipboardCheck)
                        : desktopsidebarButton(context, "my orders", FontAwesomeIcons.clipboardCheck, "", false),
                  ),
                  ResponsiveRowColumnItem(child: Divider(color: textColor.withOpacity(0.3))),
                  ResponsiveRowColumnItem(
                    child: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP)
                        ? mobilesidebarButton(FontAwesomeIcons.commentDots)
                        : desktopsidebarButton(context, "chats", FontAwesomeIcons.commentDots, "", false),
                  ),
                  ResponsiveRowColumnItem(
                    child: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP)
                        ? mobilesidebarButton(FontAwesomeIcons.star)
                        : desktopsidebarButton(context, "position in rating", FontAwesomeIcons.star, "120", false),
                  ),
                  ResponsiveRowColumnItem(
                    child: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP)
                        ? mobilesidebarButton(FontAwesomeIcons.comment)
                        : desktopsidebarButton(context, "help center", FontAwesomeIcons.comments, "", false),
                  ),
                  ResponsiveRowColumnItem(
                    child: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP)
                        ? mobilesidebarButton(FontAwesomeIcons.infoCircle)
                        : desktopsidebarButton(context, "rules & tips", FontAwesomeIcons.infoCircle, "", false),
                  ),
                  ResponsiveRowColumnItem(child: Divider(color: textColor.withOpacity(0.3))),
                ],
              ),
            ],
          ),
        );
}

Widget chatSidebar(BuildContext context) {
  return ResponsiveWrapper.of(context).isSmallerThan(TABLET)
      ? IconButton(
          onPressed: () {},
          icon: Icon(
            FontAwesomeIcons.facebookMessenger,
            size: 20,
            color: myPrimaryColor,
          ),
        )
      : Container(
          color: textColor,
          width: ResponsiveWrapper.of(context).isTablet ? 0 : 320,
          child: ListView(
            // mainAxisAlignment: MainAxisAlignment.start,
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                leading: Text(
                  "Chats",
                  style: TextStyle(fontSize: 18),
                ),
                trailing: Icon(
                  Icons.close,
                  size: 20,
                ),
              ),
              Divider(color: myPrimaryColor.withOpacity(0.5)),
              chatTileCard(),
              chatTileCard(),
              chatTileCard(),
              chatTileCard(),
              chatTileCard(),
              chatTileCard(),
              chatTileCard(),
              chatTileCard(),
              chatTileCard(),
              chatTileCard(),
              chatTileCard(),
              // ResponsiveRowColumn(
              //   // rowMainAxisAlignment: MainAxisAlignment.start,
              //   // rowCrossAxisAlignment: CrossAxisAlignment.start,
              //   // columnMainAxisAlignment: MainAxisAlignment.start,
              //   // columnCrossAxisAlignment: CrossAxisAlignment.start,
              //   layout: ResponsiveRowColumnType.COLUMN,
              //   children: [
              //     ResponsiveRowColumnItem(
              //       child: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP)
              //           ? mobilesidebarButton(FontAwesomeIcons.comment)
              //           : desktopsidebarButton(context, "chats", FontAwesomeIcons.bars),
              //     ),
              //   ],
              // ),
            ],
          ),
        );
}
