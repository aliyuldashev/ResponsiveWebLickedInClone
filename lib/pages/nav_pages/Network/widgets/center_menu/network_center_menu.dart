import 'package:flutter/material.dart';
import 'package:linkedin_web_ui/pages/nav_pages/Network/widgets/center_menu/widget/PandingWidget.dart';
import 'package:linkedin_web_ui/pages/nav_pages/Network/widgets/center_menu/widget/SuggestionWrapperWidget.dart';

class NetworkCenterMenu extends StatelessWidget {
  final double maxwidth;

  const NetworkCenterMenu({Key? key, required this.maxwidth}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 30),
      child: SizedBox(
        width: maxwidth,
        child: const Column(
          children: [
            PandingWidget(),
            SizedBox(height: 10),
            SuggestionsWrapperWidget(),
          ],
        ),
      ),
    );
  }
}
