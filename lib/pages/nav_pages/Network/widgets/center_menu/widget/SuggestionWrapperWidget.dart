import 'package:flutter/material.dart';
import 'package:linkedin_web_ui/pages/nav_pages/Network/widgets/center_menu/widget/EventWidget.dart';
import 'package:linkedin_web_ui/pages/nav_pages/Network/widgets/center_menu/widget/GroupWidget.dart';
import 'package:linkedin_web_ui/pages/nav_pages/Network/widgets/center_menu/widget/NewslaterWidget.dart';
import 'package:linkedin_web_ui/pages/nav_pages/Network/widgets/center_menu/widget/PeopleWidget.dart';
import 'package:linkedin_web_ui/pages/nav_pages/Network/widgets/center_menu/widget/alsoFolowWidget.dart';
import 'package:linkedin_web_ui/theme/styles.dart';

class SuggestionsWrapperWidget extends StatefulWidget {
  const SuggestionsWrapperWidget({Key? key}) : super(key: key);

  @override
  State<SuggestionsWrapperWidget> createState() =>
      _SuggestionsWrapperWidgetState();
}

class _SuggestionsWrapperWidgetState extends State<SuggestionsWrapperWidget> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return LayoutBuilder(builder: (context, constraints) {
      return Container(
        padding: EdgeInsets.all(10),
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: linkedInLightGreyCACCCE, width: 1),
            color: linkedInWhiteFFFFFF),
        child: Column(
          children: [
            Column(children: [
              PeopleWidget(
                title: "People you may know from Inha University",
                hight: width > 1300
                    ? 600
                    : 1025 < width && width < 1300
                        ? 900
                        : 1200,
                number: width > 1300
                    ? 8
                    : 1025 < width && width < 1300
                        ? 6
                        : 4,
              )
            ]),
            NewsleterWidget(
              title:
                  "People who are in Korea also subscribe to these newsletters",
            ),
            GroupWidget(title: "Groups you may be interested in"),
            EventWidget(
              title: "Online events for you",
            ),
            AlsoFolowWidget(
                title: "People who are in Korea also follow these people"),
          ],
        ),
      );
    });
  }
}
